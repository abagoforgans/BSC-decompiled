contract main {




// =====================  Runtime code  =====================


const BASE_RATE = 216442 * 10^12

const INITIAL_ISSUANCE = 2867748279 * 10^15

const END = 1931622407


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 rewards;
mapping of uint256 lastUpdate;
address sub_feaa6532Address;

function name() payable {
    return name[0 len name.length]
}

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUpdate[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_feaa6532(?) payable {
    return sub_feaa6532Address
}

function _fallback() payable {
    revert
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_feaa6532Address
    if rewards[address(arg1)] > 0:
        rewards[address(arg1)] = 0
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + rewards[address(arg1)] < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += rewards[address(arg1)]
        if balanceOf[address(arg1)] + rewards[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += rewards[address(arg1)]
        emit Transfer(rewards[address(arg1)], 0, arg1);
        emit RewardPaid(rewards[address(arg1)], arg1);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_feaa6532Address
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
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getTotalClaimable(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < 1931622407:
        if lastUpdate[address(arg1)] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg1)]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_feaa6532Address)
        staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return rewards[address(arg1)]
        require ext_call.return_data[0]
        if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (rewards[address(arg1)] + ((216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600))
    if lastUpdate[address(arg1)] > 1931622407:
        revert with 0, 'SafeMath: subtraction overflow'
    if (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg1)] + 1931622407:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_feaa6532Address)
    staticcall sub_feaa6532Address.balanceOG(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return rewards[address(arg1)]
    require ext_call.return_data[0]
    if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (rewards[address(arg1)] + ((418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600))
}

function updateReward(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == sub_feaa6532Address
    if arg3 < 1001:
        if block.timestamp < 1931622407:
            if lastUpdate[address(arg1)] <= 0:
                if lastUpdate[address(arg1)] != 1931622407:
                    lastUpdate[address(arg1)] = block.timestamp
                if arg2:
                    if lastUpdate[address(arg2)] > 0:
                        if lastUpdate[address(arg2)] > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg2)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg2)]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(sub_feaa6532Address)
                        staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg2)]):
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            rewards[address(arg2)] += (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
                    if lastUpdate[address(arg2)] != 1931622407:
                        lastUpdate[address(arg2)] = block.timestamp
            else:
                if lastUpdate[address(arg1)] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg1)]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    rewards[address(arg1)] += (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
                if lastUpdate[address(arg1)] != 1931622407:
                    lastUpdate[address(arg1)] = block.timestamp
                if arg2:
                    if lastUpdate[address(arg2)] > 0:
                        if lastUpdate[address(arg2)] > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg2)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg2)]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require ext_code.size(sub_feaa6532Address)
                        staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg2)]):
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rewards[address(arg2)] += (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
                    if lastUpdate[address(arg2)] != 1931622407:
                        lastUpdate[address(arg2)] = block.timestamp
        else:
            if lastUpdate[address(arg1)] <= 0:
                if lastUpdate[address(arg1)] != 1931622407:
                    lastUpdate[address(arg1)] = 1931622407
                if arg2:
                    if lastUpdate[address(arg2)] > 0:
                        if lastUpdate[address(arg2)] > 1931622407:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (-216442 * 10^12 * lastUpdate[address(arg2)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg2)] + 1931622407:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(sub_feaa6532Address)
                        staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg2)]) + 418084217015894 * 10^12:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            rewards[address(arg2)] += (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
                    if lastUpdate[address(arg2)] != 1931622407:
                        lastUpdate[address(arg2)] = 1931622407
            else:
                if lastUpdate[address(arg1)] > 1931622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg1)] + 1931622407:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    rewards[address(arg1)] += (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
                if lastUpdate[address(arg1)] != 1931622407:
                    lastUpdate[address(arg1)] = 1931622407
                if arg2:
                    if lastUpdate[address(arg2)] > 0:
                        if lastUpdate[address(arg2)] > 1931622407:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (-216442 * 10^12 * lastUpdate[address(arg2)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg2)] + 1931622407:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require ext_code.size(sub_feaa6532Address)
                        staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg2)]) + 418084217015894 * 10^12:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rewards[address(arg2)] += (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
                    if lastUpdate[address(arg2)] != 1931622407:
                        lastUpdate[address(arg2)] = 1931622407
}

function updateRewardOnMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_feaa6532Address != msg.sender:
        revert with 0, 'Can't call this'
    if block.timestamp < 1931622407:
        if lastUpdate[address(arg1)] <= 0:
            if not arg2:
                if rewards[address(arg1)] < rewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if 2867748279 * 10^15 * arg2 / arg2 != 2867748279 * 10^15:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(arg1)] + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(arg1)] += 2867748279 * 10^15 * arg2
        else:
            if not arg2:
                if lastUpdate[address(arg1)] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg1)]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if rewards[address(arg1)] < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require ext_call.return_data[0]
                    if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600 < (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + ((216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] += (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
            else:
                require arg2
                if 2867748279 * 10^15 * arg2 / arg2 != 2867748279 * 10^15:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if lastUpdate[address(arg1)] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]) / 216442 * 10^12 != block.timestamp - lastUpdate[address(arg1)]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2867748279 * 10^15 * arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] += 2867748279 * 10^15 * arg2
                else:
                    require ext_call.return_data[0]
                    if (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (216442 * 10^12 * block.timestamp) - (216442 * 10^12 * lastUpdate[address(arg1)]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ((216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2) < (216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + ((216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] = rewards[address(arg1)] + ((216442 * 10^12 * block.timestamp * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2)
        lastUpdate[address(arg1)] = block.timestamp
    else:
        if lastUpdate[address(arg1)] <= 0:
            if not arg2:
                if rewards[address(arg1)] < rewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if 2867748279 * 10^15 * arg2 / arg2 != 2867748279 * 10^15:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(arg1)] + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(arg1)] += 2867748279 * 10^15 * arg2
        else:
            if not arg2:
                if lastUpdate[address(arg1)] > 1931622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg1)] + 1931622407:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if rewards[address(arg1)] < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require ext_call.return_data[0]
                    if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600 < (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + ((418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] += (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
            else:
                require arg2
                if 2867748279 * 10^15 * arg2 / arg2 != 2867748279 * 10^15:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if lastUpdate[address(arg1)] > 1931622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12 / 216442 * 10^12 != -lastUpdate[address(arg1)] + 1931622407:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_feaa6532Address)
                staticcall sub_feaa6532Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 2867748279 * 10^15 * arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] += 2867748279 * 10^15 * arg2
                else:
                    require ext_call.return_data[0]
                    if (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (-216442 * 10^12 * lastUpdate[address(arg1)]) + 418084217015894 * 10^12:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ((418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2) < (418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewards[address(arg1)] + ((418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2) < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(arg1)] = rewards[address(arg1)] + ((418084217015894 * 10^12 * ext_call.return_data[0]) - (216442 * 10^12 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (2867748279 * 10^15 * arg2)
        lastUpdate[address(arg1)] = 1931622407
}



}
