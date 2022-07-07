contract main {




// =====================  Runtime code  =====================


address stakeTokenAddress;
address owner;
uint256 totalStakedToken;
uint256 sub_d287de4e;
uint256 sub_c7c695f0;
uint256 sub_c0372838;
uint256 totalStakers;
uint256 sub_ccb30941;
uint256 bonus;
uint256 percentDivider;
mapping of struct sub_ede85eb7;
mapping of struct sub_9845db70;

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStakers() payable {
    return totalStakers
}

function owner() payable {
    return owner
}

function sub_9845db70(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_9845db70[arg1][arg2].field_0, 
           sub_9845db70[arg1][arg2].field_256,
           sub_9845db70[arg1][arg2].field_512,
           sub_9845db70[arg1][arg2].field_768,
           sub_9845db70[arg1][arg2].field_1024,
           bool(sub_9845db70[arg1][arg2].field_1280),
           bool(sub_9845db70[arg1][arg2].field_1288)
}

function sub_c0372838(?) payable {
    return sub_c0372838
}

function sub_c7c695f0(?) payable {
    return sub_c7c695f0
}

function totalStakedToken() payable {
    return totalStakedToken
}

function sub_ccb30941(?) payable {
    return sub_ccb30941
}

function sub_d287de4e(?) payable {
    return sub_d287de4e
}

function sub_ede85eb7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ede85eb7[arg1].field_0, 
           sub_ede85eb7[arg1].field_256,
           sub_ede85eb7[arg1].field_512,
           sub_ede85eb7[arg1].field_768,
           sub_ede85eb7[arg1].field_1024,
           bool(sub_ede85eb7[arg1].field_1280)
}

function Bonus() payable {
    return bonus
}

function percentDivider() payable {
    return percentDivider
}

function _fallback() payable {
    revert
}

function sub_f464b47b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    sub_ccb30941 = arg1
}

function sub_767bcbf7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'only owner'
    bonus = arg1
    percentDivider = arg2
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9845db70[address(msg.sender)][arg1].field_1280:
        revert with 0, 'already withdrawan'
    if sub_9845db70[address(msg.sender)][arg1].field_1288:
        revert with 0, 'already unstaked'
    if arg1 >= sub_ede85eb7[address(msg.sender)].field_1024:
        revert with 0, 'Invalid index'
    sub_9845db70[address(msg.sender)][arg1].field_1288 = 1
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_9845db70[address(msg.sender)][arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_d287de4e > -sub_9845db70[address(msg.sender)][arg1].field_512 - 1:
        revert with 'NH{q', 17
    if sub_d287de4e + sub_9845db70[address(msg.sender)][arg1].field_512 < sub_d287de4e:
        revert with 0, 'SafeMath: addition overflow'
    sub_d287de4e += sub_9845db70[address(msg.sender)][arg1].field_512
    if sub_ede85eb7[address(msg.sender)].field_512 > -sub_9845db70[address(msg.sender)][arg1].field_512 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_512 + sub_9845db70[address(msg.sender)][arg1].field_512 < sub_ede85eb7[address(msg.sender)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_512 += sub_9845db70[address(msg.sender)][arg1].field_512
    emit UNSTAKE(msg.sender, sub_9845db70[address(msg.sender)][arg1].field_512);
}

function realtimeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_ede85eb7[address(arg1)].field_1024:
        if not sub_9845db70[address(arg1)][idx].field_1280:
            if not sub_9845db70[address(arg1)][idx].field_1288:
                if block.timestamp < sub_9845db70[address(arg1)][idx].field_256:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_9845db70[address(arg1)][idx].field_256:
                    if 0 >= sub_9845db70[address(arg1)][idx].field_768:
                        if 0 > -sub_9845db70[address(arg1)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                else:
                    if block.timestamp - sub_9845db70[address(arg1)][idx].field_256 and sub_9845db70[address(arg1)][idx].field_1024 > -1 / block.timestamp - sub_9845db70[address(arg1)][idx].field_256:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_9845db70[address(arg1)][idx].field_256:
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_9845db70[address(arg1)][idx].field_1024) - (sub_9845db70[address(arg1)][idx].field_256 * sub_9845db70[address(arg1)][idx].field_1024) / block.timestamp - sub_9845db70[address(arg1)][idx].field_256 != sub_9845db70[address(arg1)][idx].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if (block.timestamp * sub_9845db70[address(arg1)][idx].field_1024) - (sub_9845db70[address(arg1)][idx].field_256 * sub_9845db70[address(arg1)][idx].field_1024) >= sub_9845db70[address(arg1)][idx].field_768:
                        if 0 > -sub_9845db70[address(arg1)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                    else:
                        if 0 > (-1 * block.timestamp * sub_9845db70[address(arg1)][idx].field_1024) + (sub_9845db70[address(arg1)][idx].field_256 * sub_9845db70[address(arg1)][idx].field_1024) - 1:
                            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    return 0
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 0:
        revert with 0, 'stake more than 0'
    if not sub_ede85eb7[address(msg.sender)].field_1280:
        sub_ede85eb7[address(msg.sender)].field_1280 = 1
        if totalStakers == -1:
            revert with 'NH{q', 17
        totalStakers++
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ede85eb7[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_0 + arg1 < sub_ede85eb7[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_0 += arg1
    if totalStakedToken > -arg1 - 1:
        revert with 'NH{q', 17
    if totalStakedToken + arg1 < totalStakedToken:
        revert with 0, 'SafeMath: addition overflow'
    totalStakedToken += arg1
    if block.timestamp > -sub_ccb30941 - 1:
        revert with 'NH{q', 17
    if block.timestamp + sub_ccb30941 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_0 = block.timestamp + sub_ccb30941
    sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_256 = block.timestamp
    sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_512 = arg1
    if not arg1:
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_768 = 0 / percentDivider
    else:
        if arg1 and bonus > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * bonus / arg1 != bonus:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_768 = arg1 * bonus / percentDivider
    if sub_ccb30941 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not sub_ccb30941:
        revert with 'NH{q', 18
    sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_1024 = sub_9845db70[address(msg.sender)][stor10[address(msg.sender)].field_1024].field_768 / sub_ccb30941
    if sub_ede85eb7[address(msg.sender)].field_1024 == -1:
        revert with 'NH{q', 17
    sub_ede85eb7[address(msg.sender)].field_1024++
    emit STAKE(msg.sender, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9845db70[address(msg.sender)][arg1].field_1280:
        revert with 0, 'already withdrawan'
    if sub_9845db70[address(msg.sender)][arg1].field_1288:
        revert with 0, 'already unstaked'
    if sub_9845db70[address(msg.sender)][arg1].field_0 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot withdraw before stake duration'
    if arg1 >= sub_ede85eb7[address(msg.sender)].field_1024:
        revert with 0, 'Invalid index'
    sub_9845db70[address(msg.sender)][arg1].field_1280 = 1
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_9845db70[address(msg.sender)][arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, sub_9845db70[address(msg.sender)][arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_c7c695f0 > -sub_9845db70[address(msg.sender)][arg1].field_512 - 1:
        revert with 'NH{q', 17
    if sub_c7c695f0 + sub_9845db70[address(msg.sender)][arg1].field_512 < sub_c7c695f0:
        revert with 0, 'SafeMath: addition overflow'
    sub_c7c695f0 += sub_9845db70[address(msg.sender)][arg1].field_512
    if sub_c0372838 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_c0372838 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_c0372838:
        revert with 0, 'SafeMath: addition overflow'
    sub_c0372838 += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_ede85eb7[address(msg.sender)].field_256 > -sub_9845db70[address(msg.sender)][arg1].field_512 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_256 + sub_9845db70[address(msg.sender)][arg1].field_512 < sub_ede85eb7[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_256 += sub_9845db70[address(msg.sender)][arg1].field_512
    if sub_ede85eb7[address(msg.sender)].field_768 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_768 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_ede85eb7[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_768 += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_9845db70[address(msg.sender)][arg1].field_768 > -sub_9845db70[address(msg.sender)][arg1].field_512 - 1:
        revert with 'NH{q', 17
    if sub_9845db70[address(msg.sender)][arg1].field_768 + sub_9845db70[address(msg.sender)][arg1].field_512 < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    emit WITHDRAW(msg.sender, sub_9845db70[address(msg.sender)][arg1].field_768 + sub_9845db70[address(msg.sender)][arg1].field_512);
}



}
