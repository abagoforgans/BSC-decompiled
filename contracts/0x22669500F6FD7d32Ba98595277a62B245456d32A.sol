contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address tokenAddress;
address nftTokenAddress;
uint256 baseRate;
uint256 sub_7b49e8c7;
uint256 sub_68ac7928;
uint256 sub_33b55c7b;
uint256 sub_4fea8086;
mapping of struct sub_4a0fbf6e;
array of struct sub_72236fdb;

function baseRate() payable {
    return baseRate
}

function sub_33b55c7b(?) payable {
    return sub_33b55c7b
}

function sub_4a0fbf6e(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_4a0fbf6e[arg1].field_0), 
           address(sub_4a0fbf6e[arg1].field_256),
           sub_4a0fbf6e[arg1].field_512,
           sub_4a0fbf6e[arg1].field_768,
           sub_4a0fbf6e[arg1].field_1024,
           sub_4a0fbf6e[arg1].field_1280
}

function sub_4fea8086(?) payable {
    return sub_4fea8086
}

function sub_68ac7928(?) payable {
    return sub_68ac7928
}

function sub_72236fdb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_72236fdb[arg1].field_0
    return sub_72236fdb[arg1][arg2].field_0
}

function sub_7b49e8c7(?) payable {
    return sub_7b49e8c7
}

function owner() payable {
    return owner
}

function geUnlockTime() payable {
    return geUnlockTime
}

function nftToken() payable {
    return nftTokenAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_330283aa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseRate = arg1
}

function sub_0a225eda(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_68ac7928 = arg1
    sub_33b55c7b = arg2
    sub_4fea8086 = arg3
}

function sub_e7aa29e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = address(arg1)
    nftTokenAddress = address(arg2)
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    stor1 = owner
    owner = arg1
}

function withdrawToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
    call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_33e75e9f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_72236fdb[address(arg1)].field_0:
        mem[128] = sub_72236fdb[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_72236fdb[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_72236fdb[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_72236fdb[address(arg1)].field_0, data=mem[128 len 32 * sub_72236fdb[address(arg1)].field_0])
    mem[(32 * sub_72236fdb[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_72236fdb[address(arg1)].field_0) + 160] = sub_72236fdb[address(arg1)].field_0
    mem[(32 * sub_72236fdb[address(arg1)].field_0) + 192 len 32 * sub_72236fdb[address(arg1)].field_0] = mem[128 len 32 * sub_72236fdb[address(arg1)].field_0]
    return memory
      from (32 * sub_72236fdb[address(arg1)].field_0) + 128
       len (96 * sub_72236fdb[address(arg1)].field_0) + 64
}

function stake(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'MRNFTPool: Please approve us to spend your NFT.'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 != 1:
        if arg3 != 2:
            if block.timestamp > -1:
                revert with 0, 17
            address(sub_4a0fbf6e[arg2].field_0) = arg1
            address(sub_4a0fbf6e[arg2].field_256) = msg.sender
            sub_4a0fbf6e[arg2].field_512 = arg2
            sub_4a0fbf6e[arg2].field_768 = block.timestamp
        else:
            if block.timestamp > -2592001:
                revert with 0, 17
            address(sub_4a0fbf6e[arg2].field_0) = arg1
            address(sub_4a0fbf6e[arg2].field_256) = msg.sender
            sub_4a0fbf6e[arg2].field_512 = arg2
            sub_4a0fbf6e[arg2].field_768 = block.timestamp + (720 * 24 * 3600)
    else:
        if arg3 != 2:
            if block.timestamp > -1296001:
                revert with 0, 17
            address(sub_4a0fbf6e[arg2].field_0) = arg1
            address(sub_4a0fbf6e[arg2].field_256) = msg.sender
            sub_4a0fbf6e[arg2].field_512 = arg2
            sub_4a0fbf6e[arg2].field_768 = block.timestamp + (360 * 24 * 3600)
        else:
            if block.timestamp > -2592001:
                revert with 0, 17
            address(sub_4a0fbf6e[arg2].field_0) = arg1
            address(sub_4a0fbf6e[arg2].field_256) = msg.sender
            sub_4a0fbf6e[arg2].field_512 = arg2
            sub_4a0fbf6e[arg2].field_768 = block.timestamp + (720 * 24 * 3600)
    sub_4a0fbf6e[arg2].field_1024 = arg3
    sub_4a0fbf6e[arg2].field_1280 = block.timestamp
    sub_72236fdb[msg.sender].field_0++
    sub_72236fdb[msg.sender][sub_72236fdb[msg.sender].field_0].field_0 = arg2
    emit Staked(arg2, arg3, msg.sender, arg1);
}

function sub_b86278ad(?) payable {
    require calldata.size - 4 >= 32
    if not address(sub_4a0fbf6e[arg1].field_0):
        return 0
    if not address(sub_4a0fbf6e[arg1].field_256):
        return 0
    if sub_4a0fbf6e[arg1].field_1280 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_4a0fbf6e[arg1].field_1280:
        revert with 0, 17
    if sub_4a0fbf6e[arg1].field_1024:
        if sub_4a0fbf6e[arg1].field_1024 != 1:
            if sub_4a0fbf6e[arg1].field_1024 != 2:
                if baseRate:
                    if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                        revert with 0, 17
                    if not baseRate:
                        revert with 0, 18
                    if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                        if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and 0 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                            revert with 0, 17
                        if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                            revert with 0, 18
                        if 0 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                            revert with 0, 'SafeMath: multiplication overflow'
                if not sub_7b49e8c7:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / sub_7b49e8c7 / 100)
        else:
            if sub_4a0fbf6e[arg1].field_1024 != 2:
                if not baseRate:
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                    revert with 0, 17
                if not baseRate:
                    revert with 0, 18
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 17
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 18
                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_7b49e8c7:
                    revert with 0, 'SafeMath: division by zero', 0
                return ((block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100)
    else:
        if sub_4a0fbf6e[arg1].field_1024 != 1:
            if sub_4a0fbf6e[arg1].field_1024 != 2:
                if not baseRate:
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                    revert with 0, 17
                if not baseRate:
                    revert with 0, 18
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_68ac7928 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 17
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 18
                if (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_68ac7928:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_7b49e8c7:
                    revert with 0, 'SafeMath: division by zero', 0
                return ((block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / sub_7b49e8c7 / 100)
        else:
            if sub_4a0fbf6e[arg1].field_1024 != 2:
                if not baseRate:
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                    revert with 0, 17
                if not baseRate:
                    revert with 0, 18
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    if not sub_7b49e8c7:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / sub_7b49e8c7 / 100)
                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 17
                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                    revert with 0, 18
                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_7b49e8c7:
                    revert with 0, 'SafeMath: division by zero', 0
                return ((block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100)
    ('eq', 2, ('field', 1024, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_4a0fbf6e', 10)))))
    if not baseRate:
        if not sub_7b49e8c7:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_7b49e8c7 / 100)
    if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
        revert with 0, 17
    if not baseRate:
        revert with 0, 18
    if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
        if not sub_7b49e8c7:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_7b49e8c7 / 100)
    if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
        revert with 0, 17
    if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
        revert with 0, 18
    if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_7b49e8c7:
        revert with 0, 'SafeMath: division by zero', 0
    return ((block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100)
}

function sub_70bbfa26(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_4a0fbf6e[arg1].field_256) != msg.sender:
        revert with 0, 'MRNFTPool: Caller is not the owner.'
    if not address(sub_4a0fbf6e[arg1].field_0):
        address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
        sub_4a0fbf6e[arg1].field_1280 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x1e76cf8a: 0, arg1, msg.sender
    else:
        if not address(sub_4a0fbf6e[arg1].field_256):
            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x1e76cf8a: 0, arg1, msg.sender
        else:
            if sub_4a0fbf6e[arg1].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < sub_4a0fbf6e[arg1].field_1280:
                revert with 0, 17
            if sub_4a0fbf6e[arg1].field_1024:
                if sub_4a0fbf6e[arg1].field_1024 != 1:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if baseRate:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and 0 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if 0 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_7b49e8c7:
                            revert with 0, 'SafeMath: division by zero', 0
                        address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                        sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_7b49e8c7 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                else:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100, arg1, msg.sender
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
            else:
                if sub_4a0fbf6e[arg1].field_1024 != 1:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_68ac7928 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_68ac7928:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / sub_7b49e8c7 / 100, arg1, msg.sender
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                else:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100, arg1, msg.sender
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
}

function claimNft(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(sub_4a0fbf6e[arg1].field_256) != msg.sender:
        revert with 0, 'MRNFTPool: Caller is not the owner.'
    if block.timestamp < sub_4a0fbf6e[arg1].field_768:
        revert with 0, 'MRNFTPool: Staking time not reached.'
    if address(sub_4a0fbf6e[arg1].field_256) != msg.sender:
        revert with 0, 'MRNFTPool: Caller is not the owner.'
    if not address(sub_4a0fbf6e[arg1].field_0):
        address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
        sub_4a0fbf6e[arg1].field_1280 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x1e76cf8a: 0, arg1, msg.sender
        require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
        call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < sub_72236fdb[address(msg.sender)].field_0:
            if idx >= sub_72236fdb[address(msg.sender)].field_0:
                revert with 0, 50
            if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 11
                idx = idx + 1
                continue 
            if var45001 < 1:
                revert with 0, 17
            if var49002 < var49001:
                if 1 > !var53002:
                    revert with 0, 17
                s = var55003 + 1
                t = var55005
                u = var55006
                while s < stor[t]:
                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 50
                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                    if u == -1:
                        revert with 0, 17
                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                        revert with 0, 17
                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                        if 1 > !(u + 1):
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 11
                        s = u + 2
                        t = sha3(address(msg.sender), 11)
                        u = u + 1
                        continue 
                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                        revert with 0, 17
                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 50
                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                    if not sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 49
                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                    sub_72236fdb[address(msg.sender)].field_0--
                    address(sub_4a0fbf6e[arg1].field_0) = 0
                    address(sub_4a0fbf6e[arg1].field_256) = 0
                    sub_4a0fbf6e[arg1].field_512 = 0
                    sub_4a0fbf6e[arg1].field_768 = 0
                    sub_4a0fbf6e[arg1].field_1024 = 0
                    sub_4a0fbf6e[arg1].field_1280 = 0
                revert with 0, 50
            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                revert with 0, 50
            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
            if not sub_72236fdb[address(msg.sender)].field_0:
                revert with 0, 49
            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
            sub_72236fdb[address(msg.sender)].field_0--
            address(sub_4a0fbf6e[arg1].field_0) = 0
            address(sub_4a0fbf6e[arg1].field_256) = 0
            sub_4a0fbf6e[arg1].field_512 = 0
            sub_4a0fbf6e[arg1].field_768 = 0
            sub_4a0fbf6e[arg1].field_1024 = 0
            sub_4a0fbf6e[arg1].field_1280 = 0
        if var42001 < 1:
            revert with 0, 17
        if var46002 < var46001:
            if 1 > !var50002:
                revert with 0, 17
            s = var52003 + 1
            t = var52005
            u = var52006
            while s < stor[t]:
                if u >= sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 50
                sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                if u == -1:
                    revert with 0, 17
                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                    revert with 0, 17
                if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                    mem[0] = msg.sender
                    mem[32] = 11
                    if 1 > !(u + 1):
                        revert with 0, 17
                    s = u + 2
                    t = sha3(address(msg.sender), 11)
                    u = u + 1
                    continue 
                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                    revert with 0, 17
                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 50
                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                if not sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 49
                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                sub_72236fdb[address(msg.sender)].field_0--
                address(sub_4a0fbf6e[arg1].field_0) = 0
                address(sub_4a0fbf6e[arg1].field_256) = 0
                sub_4a0fbf6e[arg1].field_512 = 0
                sub_4a0fbf6e[arg1].field_768 = 0
                sub_4a0fbf6e[arg1].field_1024 = 0
                sub_4a0fbf6e[arg1].field_1280 = 0
            revert with 0, 50
    else:
        if not address(sub_4a0fbf6e[arg1].field_256):
            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x1e76cf8a: 0, arg1, msg.sender
            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < sub_72236fdb[address(msg.sender)].field_0:
                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 50
                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 11
                    idx = idx + 1
                    continue 
                if var46001 < 1:
                    revert with 0, 17
                if var50002 < var50001:
                    if 1 > !var54002:
                        revert with 0, 17
                    s = var56003 + 1
                    t = var56005
                    u = var56006
                    while s < stor[t]:
                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                            revert with 0, 50
                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                        if u == -1:
                            revert with 0, 17
                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                            revert with 0, 17
                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                            if 1 > !(u + 1):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 11
                            s = u + 2
                            t = sha3(address(msg.sender), 11)
                            u = u + 1
                            continue 
                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                            revert with 0, 17
                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                            revert with 0, 50
                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                        if not sub_72236fdb[address(msg.sender)].field_0:
                            revert with 0, 49
                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                        sub_72236fdb[address(msg.sender)].field_0--
                        address(sub_4a0fbf6e[arg1].field_0) = 0
                        address(sub_4a0fbf6e[arg1].field_256) = 0
                        sub_4a0fbf6e[arg1].field_512 = 0
                        sub_4a0fbf6e[arg1].field_768 = 0
                        sub_4a0fbf6e[arg1].field_1024 = 0
                        sub_4a0fbf6e[arg1].field_1280 = 0
                    revert with 0, 50
                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                    revert with 0, 17
                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 50
                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                if not sub_72236fdb[address(msg.sender)].field_0:
                    revert with 0, 49
                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                sub_72236fdb[address(msg.sender)].field_0--
                address(sub_4a0fbf6e[arg1].field_0) = 0
                address(sub_4a0fbf6e[arg1].field_256) = 0
                sub_4a0fbf6e[arg1].field_512 = 0
                sub_4a0fbf6e[arg1].field_768 = 0
                sub_4a0fbf6e[arg1].field_1024 = 0
                sub_4a0fbf6e[arg1].field_1280 = 0
            if var43001 < 1:
                revert with 0, 17
            if var47002 < var47001:
                if 1 > !var51002:
                    revert with 0, 17
                s = var53003 + 1
                t = var53005
                u = var53006
                while s < stor[t]:
                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 50
                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                    if u == -1:
                        revert with 0, 17
                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                        revert with 0, 17
                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                        mem[0] = msg.sender
                        mem[32] = 11
                        if 1 > !(u + 1):
                            revert with 0, 17
                        s = u + 2
                        t = sha3(address(msg.sender), 11)
                        u = u + 1
                        continue 
                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                        revert with 0, 17
                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 50
                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                    if not sub_72236fdb[address(msg.sender)].field_0:
                        revert with 0, 49
                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                    sub_72236fdb[address(msg.sender)].field_0--
                    address(sub_4a0fbf6e[arg1].field_0) = 0
                    address(sub_4a0fbf6e[arg1].field_256) = 0
                    sub_4a0fbf6e[arg1].field_512 = 0
                    sub_4a0fbf6e[arg1].field_768 = 0
                    sub_4a0fbf6e[arg1].field_1024 = 0
                    sub_4a0fbf6e[arg1].field_1280 = 0
                revert with 0, 50
        else:
            if sub_4a0fbf6e[arg1].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < sub_4a0fbf6e[arg1].field_1280:
                revert with 0, 17
            if sub_4a0fbf6e[arg1].field_1024:
                if sub_4a0fbf6e[arg1].field_1024 != 1:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var83001 < 1:
                                    revert with 0, 17
                                if var87002 < var87001:
                                    if 1 > !var91002:
                                        revert with 0, 17
                                    s = var93003 + 1
                                    t = var93005
                                    u = var93006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var80001 < 1:
                                revert with 0, 17
                            if var84002 < var84001:
                                if 1 > !var88002:
                                    revert with 0, 17
                                s = var90003 + 1
                                t = var90005
                                u = var90006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var89001 < 1:
                                        revert with 0, 17
                                    if var93002 < var93001:
                                        if 1 > !var97002:
                                            revert with 0, 17
                                        s = var99003 + 1
                                        t = var99005
                                        u = var99006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var86001 < 1:
                                    revert with 0, 17
                                if var90002 < var90001:
                                    if 1 > !var94002:
                                        revert with 0, 17
                                    s = var96003 + 1
                                    t = var96005
                                    u = var96006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and 0 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if 0 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var95001 < 1:
                                        revert with 0, 17
                                    if var99002 < var99001:
                                        if 1 > !var103002:
                                            revert with 0, 17
                                        s = var105003 + 1
                                        t = var105005
                                        u = var105006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var92001 < 1:
                                    revert with 0, 17
                                if var96002 < var96001:
                                    if 1 > !var100002:
                                        revert with 0, 17
                                    s = var102003 + 1
                                    t = var102005
                                    u = var102006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var83001 < 1:
                                    revert with 0, 17
                                if var87002 < var87001:
                                    if 1 > !var91002:
                                        revert with 0, 17
                                    s = var93003 + 1
                                    t = var93005
                                    u = var93006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var80001 < 1:
                                revert with 0, 17
                            if var84002 < var84001:
                                if 1 > !var88002:
                                    revert with 0, 17
                                s = var90003 + 1
                                t = var90005
                                u = var90006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var89001 < 1:
                                        revert with 0, 17
                                    if var93002 < var93001:
                                        if 1 > !var97002:
                                            revert with 0, 17
                                        s = var99003 + 1
                                        t = var99005
                                        u = var99006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var86001 < 1:
                                    revert with 0, 17
                                if var90002 < var90001:
                                    if 1 > !var94002:
                                        revert with 0, 17
                                    s = var96003 + 1
                                    t = var96005
                                    u = var96006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var95001 < 1:
                                        revert with 0, 17
                                    if var99002 < var99001:
                                        if 1 > !var103002:
                                            revert with 0, 17
                                        s = var105003 + 1
                                        t = var105005
                                        u = var105006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var92001 < 1:
                                    revert with 0, 17
                                if var96002 < var96001:
                                    if 1 > !var100002:
                                        revert with 0, 17
                                    s = var102003 + 1
                                    t = var102005
                                    u = var102006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                else:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var84001 < 1:
                                    revert with 0, 17
                                if var88002 < var88001:
                                    if 1 > !var92002:
                                        revert with 0, 17
                                    s = var94003 + 1
                                    t = var94005
                                    u = var94006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var81001 < 1:
                                revert with 0, 17
                            if var85002 < var85001:
                                if 1 > !var89002:
                                    revert with 0, 17
                                s = var91003 + 1
                                t = var91005
                                u = var91006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var90001 < 1:
                                        revert with 0, 17
                                    if var94002 < var94001:
                                        if 1 > !var98002:
                                            revert with 0, 17
                                        s = var100003 + 1
                                        t = var100005
                                        u = var100006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var87001 < 1:
                                    revert with 0, 17
                                if var91002 < var91001:
                                    if 1 > !var95002:
                                        revert with 0, 17
                                    s = var97003 + 1
                                    t = var97005
                                    u = var97006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var96001 < 1:
                                        revert with 0, 17
                                    if var100002 < var100001:
                                        if 1 > !var104002:
                                            revert with 0, 17
                                        s = var106003 + 1
                                        t = var106005
                                        u = var106006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var93001 < 1:
                                    revert with 0, 17
                                if var97002 < var97001:
                                    if 1 > !var101002:
                                        revert with 0, 17
                                    s = var103003 + 1
                                    t = var103005
                                    u = var103006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var84001 < 1:
                                    revert with 0, 17
                                if var88002 < var88001:
                                    if 1 > !var92002:
                                        revert with 0, 17
                                    s = var94003 + 1
                                    t = var94005
                                    u = var94006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var81001 < 1:
                                revert with 0, 17
                            if var85002 < var85001:
                                if 1 > !var89002:
                                    revert with 0, 17
                                s = var91003 + 1
                                t = var91005
                                u = var91006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var90001 < 1:
                                        revert with 0, 17
                                    if var94002 < var94001:
                                        if 1 > !var98002:
                                            revert with 0, 17
                                        s = var100003 + 1
                                        t = var100005
                                        u = var100006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var87001 < 1:
                                    revert with 0, 17
                                if var91002 < var91001:
                                    if 1 > !var95002:
                                        revert with 0, 17
                                    s = var97003 + 1
                                    t = var97005
                                    u = var97006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var96001 < 1:
                                        revert with 0, 17
                                    if var100002 < var100001:
                                        if 1 > !var104002:
                                            revert with 0, 17
                                        s = var106003 + 1
                                        t = var106005
                                        u = var106006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var93001 < 1:
                                    revert with 0, 17
                                if var97002 < var97001:
                                    if 1 > !var101002:
                                        revert with 0, 17
                                    s = var103003 + 1
                                    t = var103005
                                    u = var103006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
            else:
                if sub_4a0fbf6e[arg1].field_1024 != 1:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var84001 < 1:
                                    revert with 0, 17
                                if var88002 < var88001:
                                    if 1 > !var92002:
                                        revert with 0, 17
                                    s = var94003 + 1
                                    t = var94005
                                    u = var94006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var81001 < 1:
                                revert with 0, 17
                            if var85002 < var85001:
                                if 1 > !var89002:
                                    revert with 0, 17
                                s = var91003 + 1
                                t = var91005
                                u = var91006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var90001 < 1:
                                        revert with 0, 17
                                    if var94002 < var94001:
                                        if 1 > !var98002:
                                            revert with 0, 17
                                        s = var100003 + 1
                                        t = var100005
                                        u = var100006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var87001 < 1:
                                    revert with 0, 17
                                if var91002 < var91001:
                                    if 1 > !var95002:
                                        revert with 0, 17
                                    s = var97003 + 1
                                    t = var97005
                                    u = var97006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_68ac7928 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_68ac7928:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_68ac7928) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_68ac7928) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var96001 < 1:
                                        revert with 0, 17
                                    if var100002 < var100001:
                                        if 1 > !var104002:
                                            revert with 0, 17
                                        s = var106003 + 1
                                        t = var106005
                                        u = var106006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var93001 < 1:
                                    revert with 0, 17
                                if var97002 < var97001:
                                    if 1 > !var101002:
                                        revert with 0, 17
                                    s = var103003 + 1
                                    t = var103005
                                    u = var103006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var84001 < 1:
                                    revert with 0, 17
                                if var88002 < var88001:
                                    if 1 > !var92002:
                                        revert with 0, 17
                                    s = var94003 + 1
                                    t = var94005
                                    u = var94006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var81001 < 1:
                                revert with 0, 17
                            if var85002 < var85001:
                                if 1 > !var89002:
                                    revert with 0, 17
                                s = var91003 + 1
                                t = var91005
                                u = var91006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var90001 < 1:
                                        revert with 0, 17
                                    if var94002 < var94001:
                                        if 1 > !var98002:
                                            revert with 0, 17
                                        s = var100003 + 1
                                        t = var100005
                                        u = var100006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var87001 < 1:
                                    revert with 0, 17
                                if var91002 < var91001:
                                    if 1 > !var95002:
                                        revert with 0, 17
                                    s = var97003 + 1
                                    t = var97005
                                    u = var97006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var96001 < 1:
                                        revert with 0, 17
                                    if var100002 < var100001:
                                        if 1 > !var104002:
                                            revert with 0, 17
                                        s = var106003 + 1
                                        t = var106005
                                        u = var106006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var93001 < 1:
                                    revert with 0, 17
                                if var97002 < var97001:
                                    if 1 > !var101002:
                                        revert with 0, 17
                                    s = var103003 + 1
                                    t = var103005
                                    u = var103006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                else:
                    if sub_4a0fbf6e[arg1].field_1024 != 2:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var85001 < 1:
                                    revert with 0, 17
                                if var89002 < var89001:
                                    if 1 > !var93002:
                                        revert with 0, 17
                                    s = var95003 + 1
                                    t = var95005
                                    u = var95006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var82001 < 1:
                                revert with 0, 17
                            if var86002 < var86001:
                                if 1 > !var90002:
                                    revert with 0, 17
                                s = var92003 + 1
                                t = var92005
                                u = var92006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var91001 < 1:
                                        revert with 0, 17
                                    if var95002 < var95001:
                                        if 1 > !var99002:
                                            revert with 0, 17
                                        s = var101003 + 1
                                        t = var101005
                                        u = var101006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var88001 < 1:
                                    revert with 0, 17
                                if var92002 < var92001:
                                    if 1 > !var96002:
                                        revert with 0, 17
                                    s = var98003 + 1
                                    t = var98005
                                    u = var98006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_33b55c7b > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_33b55c7b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_33b55c7b) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_33b55c7b) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var97001 < 1:
                                        revert with 0, 17
                                    if var101002 < var101001:
                                        if 1 > !var105002:
                                            revert with 0, 17
                                        s = var107003 + 1
                                        t = var107005
                                        u = var107006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var94001 < 1:
                                    revert with 0, 17
                                if var98002 < var98001:
                                    if 1 > !var102002:
                                        revert with 0, 17
                                    s = var104003 + 1
                                    t = var104005
                                    u = var104006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                    else:
                        if not baseRate:
                            if not sub_7b49e8c7:
                                revert with 0, 'SafeMath: division by zero', 0
                            address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                            sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_7b49e8c7 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                            require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                            call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < sub_72236fdb[address(msg.sender)].field_0:
                                if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 11
                                    idx = idx + 1
                                    continue 
                                if var85001 < 1:
                                    revert with 0, 17
                                if var89002 < var89001:
                                    if 1 > !var93002:
                                        revert with 0, 17
                                    s = var95003 + 1
                                    t = var95005
                                    u = var95006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                                if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 50
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                if not sub_72236fdb[address(msg.sender)].field_0:
                                    revert with 0, 49
                                sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                sub_72236fdb[address(msg.sender)].field_0--
                                address(sub_4a0fbf6e[arg1].field_0) = 0
                                address(sub_4a0fbf6e[arg1].field_256) = 0
                                sub_4a0fbf6e[arg1].field_512 = 0
                                sub_4a0fbf6e[arg1].field_768 = 0
                                sub_4a0fbf6e[arg1].field_1024 = 0
                                sub_4a0fbf6e[arg1].field_1280 = 0
                            if var82001 < 1:
                                revert with 0, 17
                            if var86002 < var86001:
                                if 1 > !var90002:
                                    revert with 0, 17
                                s = var92003 + 1
                                t = var92005
                                u = var92006
                                while s < stor[t]:
                                    if u >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                    if u == -1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        s = u + 2
                                        t = sha3(address(msg.sender), 11)
                                        u = u + 1
                                        continue 
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                revert with 0, 50
                        else:
                            if baseRate and block.timestamp - sub_4a0fbf6e[arg1].field_1280 > -1 / baseRate:
                                revert with 0, 17
                            if not baseRate:
                                revert with 0, 18
                            if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) / baseRate != block.timestamp - sub_4a0fbf6e[arg1].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: 0 / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var91001 < 1:
                                        revert with 0, 17
                                    if var95002 < var95001:
                                        if 1 > !var99002:
                                            revert with 0, 17
                                        s = var101003 + 1
                                        t = var101005
                                        u = var101006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var88001 < 1:
                                    revert with 0, 17
                                if var92002 < var92001:
                                    if 1 > !var96002:
                                        revert with 0, 17
                                    s = var98003 + 1
                                    t = var98005
                                    u = var98006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
                            else:
                                if (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) and sub_4fea8086 > -1 / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 17
                                if not (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate):
                                    revert with 0, 18
                                if (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / (block.timestamp * baseRate) - (sub_4a0fbf6e[arg1].field_1280 * baseRate) != sub_4fea8086:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not sub_7b49e8c7:
                                    revert with 0, 'SafeMath: division by zero', 0
                                address(sub_4a0fbf6e[arg1].field_256) = address(sub_4a0fbf6e[arg1].field_256)
                                sub_4a0fbf6e[arg1].field_1280 = block.timestamp
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x1e76cf8a: (block.timestamp * baseRate * sub_4fea8086) - (sub_4a0fbf6e[arg1].field_1280 * baseRate * sub_4fea8086) / sub_7b49e8c7 / 100, arg1, msg.sender
                                require ext_code.size(address(sub_4a0fbf6e[arg1].field_0))
                                call address(sub_4a0fbf6e[arg1].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = 0
                                while idx < sub_72236fdb[address(msg.sender)].field_0:
                                    if idx >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)][idx].field_0 != arg1:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 11
                                        idx = idx + 1
                                        continue 
                                    if var97001 < 1:
                                        revert with 0, 17
                                    if var101002 < var101001:
                                        if 1 > !var105002:
                                            revert with 0, 17
                                        s = var107003 + 1
                                        t = var107005
                                        u = var107006
                                        while s < stor[t]:
                                            if u >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                            if u == -1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                                if 1 > !(u + 1):
                                                    revert with 0, 17
                                                mem[0] = msg.sender
                                                mem[32] = 11
                                                s = u + 2
                                                t = sha3(address(msg.sender), 11)
                                                u = u + 1
                                                continue 
                                            if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                                revert with 0, 17
                                            if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 50
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            if not sub_72236fdb[address(msg.sender)].field_0:
                                                revert with 0, 49
                                            sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                            sub_72236fdb[address(msg.sender)].field_0--
                                            address(sub_4a0fbf6e[arg1].field_0) = 0
                                            address(sub_4a0fbf6e[arg1].field_256) = 0
                                            sub_4a0fbf6e[arg1].field_512 = 0
                                            sub_4a0fbf6e[arg1].field_768 = 0
                                            sub_4a0fbf6e[arg1].field_1024 = 0
                                            sub_4a0fbf6e[arg1].field_1280 = 0
                                        revert with 0, 50
                                    if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                        revert with 0, 17
                                    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    if not sub_72236fdb[address(msg.sender)].field_0:
                                        revert with 0, 49
                                    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                    sub_72236fdb[address(msg.sender)].field_0--
                                    address(sub_4a0fbf6e[arg1].field_0) = 0
                                    address(sub_4a0fbf6e[arg1].field_256) = 0
                                    sub_4a0fbf6e[arg1].field_512 = 0
                                    sub_4a0fbf6e[arg1].field_768 = 0
                                    sub_4a0fbf6e[arg1].field_1024 = 0
                                    sub_4a0fbf6e[arg1].field_1280 = 0
                                if var94001 < 1:
                                    revert with 0, 17
                                if var98002 < var98001:
                                    if 1 > !var102002:
                                        revert with 0, 17
                                    s = var104003 + 1
                                    t = var104005
                                    u = var104006
                                    while s < stor[t]:
                                        if u >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][u].field_0 = stor[sha3(t) + s]
                                        if u == -1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if u + 1 < sub_72236fdb[address(msg.sender)].field_0 - 1:
                                            mem[0] = msg.sender
                                            mem[32] = 11
                                            if 1 > !(u + 1):
                                                revert with 0, 17
                                            s = u + 2
                                            t = sha3(address(msg.sender), 11)
                                            u = u + 1
                                            continue 
                                        if sub_72236fdb[address(msg.sender)].field_0 < 1:
                                            revert with 0, 17
                                        if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        if not sub_72236fdb[address(msg.sender)].field_0:
                                            revert with 0, 49
                                        sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
                                        sub_72236fdb[address(msg.sender)].field_0--
                                        address(sub_4a0fbf6e[arg1].field_0) = 0
                                        address(sub_4a0fbf6e[arg1].field_256) = 0
                                        sub_4a0fbf6e[arg1].field_512 = 0
                                        sub_4a0fbf6e[arg1].field_768 = 0
                                        sub_4a0fbf6e[arg1].field_1024 = 0
                                        sub_4a0fbf6e[arg1].field_1280 = 0
                                    revert with 0, 50
    if sub_72236fdb[address(msg.sender)].field_0 < 1:
        revert with 0, 17
    if sub_72236fdb[address(msg.sender)].field_0 - 1 >= sub_72236fdb[address(msg.sender)].field_0:
        revert with 0, 50
    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
    if not sub_72236fdb[address(msg.sender)].field_0:
        revert with 0, 49
    sub_72236fdb[address(msg.sender)][sub_72236fdb[address(msg.sender)].field_0].field_0 = 0
    sub_72236fdb[address(msg.sender)].field_0--
    address(sub_4a0fbf6e[arg1].field_0) = 0
    address(sub_4a0fbf6e[arg1].field_256) = 0
    sub_4a0fbf6e[arg1].field_512 = 0
    sub_4a0fbf6e[arg1].field_768 = 0
    sub_4a0fbf6e[arg1].field_1024 = 0
    sub_4a0fbf6e[arg1].field_1280 = 0
}



}
