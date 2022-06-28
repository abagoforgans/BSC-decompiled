contract main {




// =====================  Runtime code  =====================


address sub_0f949f7cAddress;
address ownerAddress;
uint256 sub_007286ac;
uint256 tokenPrice;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of address sub_4479fc67;
mapping of struct userInfo;

function sub_007286ac(?) payable {
    return sub_007286ac
}

function sub_0f949f7c(?) payable {
    return sub_0f949f7cAddress
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536
}

function sub_4479fc67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4479fc67.length
    return sub_4479fc67[arg1]
}

function tokenPrice() payable {
    return tokenPrice
}

function ownerAddress() payable {
    return ownerAddress
}

function _fallback() payable {
    revert
}

function sub_4b744a92(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor7 = arg1
}

function sub_6b510b49(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor6 = arg1
}

function sub_f89056c2(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor5 = arg1
}

function sub_7dc9321e(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_007286ac = arg1
}

function sub_eb3f18b7(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_0f949f7cAddress = arg1
}

function updateTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenPrice = arg1
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_4479fc67.length++
    sub_4479fc67[sub_4479fc67.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    ownerAddress = arg1
    emit TransferOwnership(msg.sender, arg1);
}

function canWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= userInfo[address(arg1)].field_1280:
        return (block.timestamp > userInfo[address(arg1)].field_1280)
    return bool(userInfo[address(arg1)].field_0)
}

function canHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < userInfo[address(arg1)].field_1024:
        return block.timestamp >= userInfo[address(arg1)].field_1024
    return (block.timestamp < userInfo[address(arg1)].field_1280)
}

function sub_a1fa853d(?) payable {
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa60733a(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args ownerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Can not withdraw zero amount'
    if arg1 >= userInfo[msg.sender].field_0:
        revert with 0, 'Invalid withdraw amount'
    if arg1 > 0:
        if userInfo[msg.sender].field_1280 < block.timestamp:
            require ext_code.size(sub_0f949f7cAddress)
            call sub_0f949f7cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 -= arg1
    emit Withdraw(arg1, msg.sender);
}

function pendingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < userInfo[address(arg1)].field_1024:
        return 0
    if block.timestamp >= userInfo[address(arg1)].field_1280:
        return 0
    if not sub_007286ac:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[address(arg1)].field_1024:
        if (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac) + 1 < block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac) + 1:
            return 0
        if userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac * userInfo[address(arg1)].field_768) / (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac) + 1 != userInfo[address(arg1)].field_768:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac * userInfo[address(arg1)].field_768):
            return 0
        if (userInfo[address(arg1)].field_768 * sub_007286ac) + (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac * userInfo[address(arg1)].field_768 * sub_007286ac) / userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac * userInfo[address(arg1)].field_768) != sub_007286ac:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((userInfo[address(arg1)].field_768 * sub_007286ac) + (block.timestamp - userInfo[address(arg1)].field_1024 / sub_007286ac * userInfo[address(arg1)].field_768 * sub_007286ac))
    if (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac) + 1 < block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac:
        revert with 0, 'SafeMath: addition overflow'
    if not (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac) + 1:
        return 0
    if userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac * userInfo[address(arg1)].field_768) / (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac) + 1 != userInfo[address(arg1)].field_768:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac * userInfo[address(arg1)].field_768):
        return 0
    if (userInfo[address(arg1)].field_768 * sub_007286ac) + (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac * userInfo[address(arg1)].field_768 * sub_007286ac) / userInfo[address(arg1)].field_768 + (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac * userInfo[address(arg1)].field_768) != sub_007286ac:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((userInfo[address(arg1)].field_768 * sub_007286ac) + (block.timestamp - userInfo[address(arg1)].field_256 / sub_007286ac * userInfo[address(arg1)].field_768 * sub_007286ac))
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Can not transfer zero amount'
    if arg1:
        require ext_code.size(sub_0f949f7cAddress)
        call sub_0f949f7cAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_0 += arg1
        userInfo[msg.sender].field_256 = block.timestamp
        userInfo[msg.sender].field_1536 = arg2
        if arg2:
            if arg2 != 1:
                if 2 == arg2:
                    userInfo[msg.sender].field_1280 = block.timestamp + (8760 * 24 * 3600)
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_768 = 0
                    else:
                        if stor7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[msg.sender].field_768 = stor7 * userInfo[msg.sender].field_0 / 100 / 8760 * 24 * 3600
            else:
                userInfo[msg.sender].field_1280 = block.timestamp + (4320 * 24 * 3600)
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_768 = 0
                else:
                    if stor6 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[msg.sender].field_768 = stor6 * userInfo[msg.sender].field_0 / 100 / 4320 * 24 * 3600
                if 2 == arg2:
                    userInfo[msg.sender].field_1280 = block.timestamp + (8760 * 24 * 3600)
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_768 = 0
                    else:
                        if stor7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor7:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[msg.sender].field_768 = stor7 * userInfo[msg.sender].field_0 / 100 / 8760 * 24 * 3600
        else:
            userInfo[msg.sender].field_1280 = block.timestamp + (2160 * 24 * 3600)
            if not userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_768 = 0
            else:
                if stor5 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[msg.sender].field_768 = stor5 * userInfo[msg.sender].field_0 / 100 / 2160 * 24 * 3600
            if arg2 != 1:
                if 2 == arg2:
                    userInfo[msg.sender].field_1280 = block.timestamp + (8760 * 24 * 3600)
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_768 = 0
                    else:
                        if stor7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor7:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[msg.sender].field_768 = stor7 * userInfo[msg.sender].field_0 / 100 / 8760 * 24 * 3600
            else:
                userInfo[msg.sender].field_1280 = block.timestamp + (4320 * 24 * 3600)
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_768 = 0
                else:
                    if stor6 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[msg.sender].field_768 = stor6 * userInfo[msg.sender].field_0 / 100 / 4320 * 24 * 3600
                if 2 == arg2:
                    userInfo[msg.sender].field_1280 = block.timestamp + (8760 * 24 * 3600)
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_768 = 0
                    else:
                        if stor7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor7:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[msg.sender].field_768 = stor7 * userInfo[msg.sender].field_0 / 100 / 8760 * 24 * 3600
    emit Deposit(arg1, msg.sender);
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < userInfo[address(msg.sender)].field_1024:
        if not userInfo[msg.sender].field_1024:
            if sub_007286ac + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
        emit Harvest(0, msg.sender, arg1);
    else:
        if block.timestamp >= userInfo[address(msg.sender)].field_1280:
            if not userInfo[msg.sender].field_1024:
                if sub_007286ac + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
            emit Harvest(0, msg.sender, arg1);
        else:
            if not userInfo[msg.sender].field_1024:
                if not sub_007286ac:
                    revert with 0, 'SafeMath: division by zero'
                if (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac) + 1 < block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac:
                    revert with 0, 'SafeMath: addition overflow'
                if not (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac) + 1:
                    emit 0x4836c543: 0
                    if not userInfo[msg.sender].field_1024:
                        if sub_007286ac + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                    emit Harvest(0, msg.sender, arg1);
                else:
                    if userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768) / (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac) + 1 != userInfo[msg.sender].field_768:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768):
                        emit 0x4836c543: 0
                        if not userInfo[msg.sender].field_1024:
                            if sub_007286ac + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                        emit Harvest(0, msg.sender, arg1);
                    else:
                        if (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac) / userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768) != sub_007286ac:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        emit 0x4836c543: ((userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac))
                        if (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac):
                            if sub_007286ac + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                            require arg1 < sub_4479fc67.length
                            require ext_code.size(sub_4479fc67[arg1])
                            staticcall sub_4479fc67[arg1].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac):
                                require arg1 < sub_4479fc67.length
                                require ext_code.size(sub_4479fc67[arg1])
                                if 0 <= ext_call.return_data[0]:
                                    call sub_4479fc67[arg1].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    call sub_4479fc67[arg1].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                if (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac) != tokenPrice:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                require arg1 < sub_4479fc67.length
                                require ext_code.size(sub_4479fc67[arg1])
                                if (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / 10^18 <= ext_call.return_data[0]:
                                    call sub_4479fc67[arg1].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / 10^18
                                else:
                                    call sub_4479fc67[arg1].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if not userInfo[msg.sender].field_1024:
                            if sub_007286ac + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                        emit Harvest(((userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_256 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac)), msg.sender, arg1);
            else:
                if userInfo[msg.sender].field_1024 >= block.timestamp:
                    emit 0x4836c543: 0
                    if not userInfo[msg.sender].field_1024:
                        if sub_007286ac + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                    emit Harvest(0, msg.sender, arg1);
                else:
                    if userInfo[msg.sender].field_1024 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_007286ac:
                        revert with 0, 'SafeMath: division by zero'
                    if (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac) + 1 < block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac) + 1:
                        emit 0x4836c543: 0
                        if not userInfo[msg.sender].field_1024:
                            if sub_007286ac + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                        emit Harvest(0, msg.sender, arg1);
                    else:
                        if userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768) / (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac) + 1 != userInfo[msg.sender].field_768:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768):
                            emit 0x4836c543: 0
                            if not userInfo[msg.sender].field_1024:
                                if sub_007286ac + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                            emit Harvest(0, msg.sender, arg1);
                        else:
                            if (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac) / userInfo[msg.sender].field_768 + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768) != sub_007286ac:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            emit 0x4836c543: ((userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac))
                            if (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac):
                                if sub_007286ac + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                                require arg1 < sub_4479fc67.length
                                require ext_code.size(sub_4479fc67[arg1])
                                staticcall sub_4479fc67[arg1].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac):
                                    require arg1 < sub_4479fc67.length
                                    require ext_code.size(sub_4479fc67[arg1])
                                    if 0 <= ext_call.return_data[0]:
                                        call sub_4479fc67[arg1].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        call sub_4479fc67[arg1].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / (userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac) != tokenPrice:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    require arg1 < sub_4479fc67.length
                                    require ext_code.size(sub_4479fc67[arg1])
                                    if (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / 10^18 <= ext_call.return_data[0]:
                                        call sub_4479fc67[arg1].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac * tokenPrice) / 10^18
                                    else:
                                        call sub_4479fc67[arg1].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if not userInfo[msg.sender].field_1024:
                                if sub_007286ac + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_1024 = sub_007286ac + block.timestamp
                            emit Harvest(((userInfo[msg.sender].field_768 * sub_007286ac) + (block.timestamp - userInfo[msg.sender].field_1024 / sub_007286ac * userInfo[msg.sender].field_768 * sub_007286ac)), msg.sender, arg1);
}



}
