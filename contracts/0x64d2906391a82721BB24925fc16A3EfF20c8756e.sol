contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of struct whitelistTransfer;
mapping of uint256 allowance;
uint256 totalSupply;
array of address rewardPool;
mapping of struct stor5;
address stor6;
uint256 beginDeflationary;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function getRewardPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardPool.length
    return rewardPool[arg1]
}

function whitelistTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = whitelistTransfer[arg1][1].field_0
    idx = 128
    s = 0
    while whitelistTransfer[arg1][1].length + 96 > idx:
        mem[idx + 32] = whitelistTransfer[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return whitelistTransfer[arg1].field_0, 
           bool(whitelistTransfer[arg1].field_160),
           Array(len=whitelistTransfer[arg1][1].length, data=mem[128 len whitelistTransfer[arg1][1].length])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getBeginDeflationary() payable {
    return beginDeflationary
}

function _fallback() payable {
    revert
}

function setBeginDeflationFarming(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'ERC20: Only owner can call'
    beginDeflationary = arg1
}

function removeRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'ERC20: Only owner can init'
    stor5[address(arg1)].field_160 = 0
}

function removeWhitelistTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'ERC20: Only owner can init'
    whitelistTransfer[address(arg1)].field_160 = 0
}

function countActiveRewardPool() payable {
    idx = 0
    s = 0
    while idx < rewardPool.length:
        mem[0] = rewardPool[idx]
        mem[32] = 5
        if not stor5[stor4[idx]].field_160:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function addRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'ERC20: Only owner can init'
    if stor5[address(arg1)].field_168:
        revert with 0, 'Pool already exist'
    stor5[address(arg1)].field_0 = arg1
    stor5[address(arg1)].field_160 = 1
    stor5[address(arg1)].field_168 = 1
    rewardPool.length++
    rewardPool[rewardPool.length] = arg1
}

function addWhitelistTransfer(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor6 != msg.sender:
        revert with 0, 'ERC20: Only owner can init'
    whitelistTransfer[address(arg1)].field_0 = arg1
    whitelistTransfer[address(arg1)].field_160 = 1
    whitelistTransfer[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function withdrawErc20(address arg1) payable {
    require calldata.size - 4 >= 32
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
        args stor6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferWithoutDeflationary(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[324 len 28], mem[380 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if whitelistTransfer[address(arg1)].field_160:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if whitelistTransfer[address(msg.sender)].field_160:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            idx = 0
            s = 0
            while idx < rewardPool.length:
                mem[0] = rewardPool[idx]
                mem[32] = 5
                if not stor5[stor4[idx]].field_160:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if block.timestamp <= beginDeflationary:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if s <= 0:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if 90 * 5 * arg2 / 1000 / 100 <= 0:
                        if 10 * 5 * arg2 / 1000 / 100 <= 0:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                            mem[197 len 31]
                            if 10 * 5 * arg2 / 1000 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            balanceOf[address(msg.sender)] -= 10 * 5 * arg2 / 1000 / 100
                            if 10 * 5 * arg2 / 1000 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= 10 * 5 * arg2 / 1000 / 100
                            emit Transfer((10 * 5 * arg2 / 1000 / 100), msg.sender, 0);
                            if balanceOf[address(msg.sender)] + (10 * 5 * arg2 / 1000 / 100) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 10 * 5 * arg2 / 1000 / 100
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[326 len 26],
                                            mem[378 len 6]
                    else:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require s
                        idx = 0
                        while idx < rewardPool.length:
                            mem[0] = rewardPool[idx]
                            mem[32] = 5
                            if stor5[stor4[idx]].field_160:
                                require idx < rewardPool.length
                                if balanceOf[stor4[idx]] + (90 * 5 * arg2 / 1000 / 100 / s) < balanceOf[stor4[idx]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardPool.length
                                mem[32] = 0
                                balanceOf[stor4[idx]] += 90 * 5 * arg2 / 1000 / 100 / s
                                mem[0] = 4
                                mem[160] = 90 * 5 * arg2 / 1000 / 100 / s
                                emit Transfer((90 * 5 * arg2 / 1000 / 100 / s), msg.sender, rewardPool[idx]);
                            idx = idx + 1
                            continue 
                        if 10 * 5 * arg2 / 1000 / 100 <= 0:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                        else:
                            if not msg.sender:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if 10 * 5 * arg2 / 1000 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            balanceOf[address(msg.sender)] -= 10 * 5 * arg2 / 1000 / 100
                            if 10 * 5 * arg2 / 1000 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= 10 * 5 * arg2 / 1000 / 100
                            emit Transfer((10 * 5 * arg2 / 1000 / 100), msg.sender, 0);
                            if balanceOf[address(msg.sender)] + (10 * 5 * arg2 / 1000 / 100) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 10 * 5 * arg2 / 1000 / 100
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 - (10 * 5 * arg2 / 1000 / 100) - (90 * 5 * arg2 / 1000 / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (10 * 5 * arg2 / 1000 / 100) - (90 * 5 * arg2 / 1000 / 100)
                    emit Transfer((arg2 - (10 * 5 * arg2 / 1000 / 100) - (90 * 5 * arg2 / 1000 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    idx = 0
    s = 0
    while idx < rewardPool.length:
        mem[0] = rewardPool[idx]
        mem[32] = 5
        if not stor5[stor4[idx]].field_160:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if block.timestamp <= beginDeflationary:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if s <= 0:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if 90 * 5 * arg3 / 1000 / 100 <= 0:
                if 10 * 5 * arg3 / 1000 / 100 <= 0:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)
                    emit Transfer((arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if 10 * 5 * arg3 / 1000 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(arg1)] -= 10 * 5 * arg3 / 1000 / 100
                    if 10 * 5 * arg3 / 1000 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 10 * 5 * arg3 / 1000 / 100
                    emit Transfer((10 * 5 * arg3 / 1000 / 100), arg1, 0);
                    if balanceOf[address(arg1)] + (10 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10 * 5 * arg3 / 1000 / 100
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[326 len 26],
                                    mem[378 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)
                    emit Transfer((arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[424 len 24],
                                    mem[472 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
            else:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                idx = 0
                while idx < rewardPool.length:
                    mem[0] = rewardPool[idx]
                    mem[32] = 5
                    if stor5[stor4[idx]].field_160:
                        require idx < rewardPool.length
                        if balanceOf[stor4[idx]] + (90 * 5 * arg3 / 1000 / 100 / s) < balanceOf[stor4[idx]]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < rewardPool.length
                        mem[32] = 0
                        balanceOf[stor4[idx]] += 90 * 5 * arg3 / 1000 / 100 / s
                        mem[0] = 4
                        mem[160] = 90 * 5 * arg3 / 1000 / 100 / s
                        emit Transfer((90 * 5 * arg3 / 1000 / 100 / s), arg1, rewardPool[idx]);
                    idx = idx + 1
                    continue 
                if 10 * 5 * arg3 / 1000 / 100 <= 0:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)
                    emit Transfer((arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[328 len 24],
                                    mem[376 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                else:
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if 10 * 5 * arg3 / 1000 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(arg1)] -= 10 * 5 * arg3 / 1000 / 100
                    if 10 * 5 * arg3 / 1000 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 10 * 5 * arg3 / 1000 / 100
                    emit Transfer((10 * 5 * arg3 / 1000 / 100), arg1, 0);
                    if balanceOf[address(arg1)] + (10 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10 * 5 * arg3 / 1000 / 100
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[390 len 26],
                                    mem[442 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)
                    emit Transfer((arg3 - (10 * 5 * arg3 / 1000 / 100) - (90 * 5 * arg3 / 1000 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[488 len 24],
                                    mem[536 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
