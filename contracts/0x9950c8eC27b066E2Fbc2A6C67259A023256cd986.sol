contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address owner;
uint256 totalStakedToken;
uint256 sub_d287de4e;
uint256 sub_c7c695f0;
uint256 sub_c0372838;
uint256 totalStakers;
uint256 unstakePercent;
uint256 percentDivider;
array of uint256 duration;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of uint256 bonus;
uint256 stor14;
uint256 stor15;
uint256 stor16;
array of uint256 sub_17827cbf;
array of uint256 sub_9e19401a;
mapping of struct sub_ede85eb7;
mapping of struct sub_9845db70;
mapping of uint256 sub_c0102e16;
mapping of uint256 stakedTokens;

function sub_17827cbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return sub_17827cbf[arg1]
}

function unstakePercent() payable {
    return unstakePercent
}

function Bonus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return bonus[arg1]
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
           sub_9845db70[arg1][arg2].field_1280,
           bool(sub_9845db70[arg1][arg2].field_1536),
           bool(sub_9845db70[arg1][arg2].field_1544)
}

function sub_9e19401a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return sub_9e19401a[arg1]
}

function stakedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedTokens[arg1]
}

function sub_c0102e16(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_c0102e16[arg1][arg2]
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

function sub_d287de4e(?) payable {
    return sub_d287de4e
}

function Duration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return duration[arg1]
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

function token() payable {
    return tokenAddress
}

function percentDivider() payable {
    return percentDivider
}

function _fallback() payable {
    revert
}

function sub_0fab5d31(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    percentDivider = arg1
}

function sub_60fee0f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    unstakePercent = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    owner = arg1
}

function changeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    tokenAddress = arg1
}

function sub_c73174bf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'only owner'
    bonus.length = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
}

function sub_7a6346e7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'only owner'
    duration.length = arg1
    stor10 = arg2
    stor11 = arg3
    stor12 = arg4
}

function removeStuckToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_846dad21(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not sub_9845db70[address(arg1)][arg2].field_768:
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        return (0 / percentDivider)
    if sub_9845db70[address(arg1)][arg2].field_768 and unstakePercent > -1 / sub_9845db70[address(arg1)][arg2].field_768:
        revert with 'NH{q', 17
    if not sub_9845db70[address(arg1)][arg2].field_768:
        revert with 'NH{q', 18
    if sub_9845db70[address(arg1)][arg2].field_768 * unstakePercent / sub_9845db70[address(arg1)][arg2].field_768 != unstakePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if percentDivider <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not percentDivider:
        revert with 'NH{q', 18
    return (sub_9845db70[address(arg1)][arg2].field_768 * unstakePercent / percentDivider)
}

function realtimeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_ede85eb7[address(arg1)].field_1024:
        if not sub_9845db70[address(arg1)][idx].field_1536:
            if not sub_9845db70[address(arg1)][idx].field_1544:
                if block.timestamp < sub_9845db70[address(arg1)][idx].field_512:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_9845db70[address(arg1)][idx].field_512:
                    if 0 >= sub_9845db70[address(arg1)][idx].field_1024:
                        if 0 > -sub_9845db70[address(arg1)][idx].field_1024 - 1:
                            revert with 'NH{q', 17
                else:
                    if block.timestamp - sub_9845db70[address(arg1)][idx].field_512 and sub_9845db70[address(arg1)][idx].field_1280 > -1 / block.timestamp - sub_9845db70[address(arg1)][idx].field_512:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_9845db70[address(arg1)][idx].field_512:
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_9845db70[address(arg1)][idx].field_1280) - (sub_9845db70[address(arg1)][idx].field_512 * sub_9845db70[address(arg1)][idx].field_1280) / block.timestamp - sub_9845db70[address(arg1)][idx].field_512 != sub_9845db70[address(arg1)][idx].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if (block.timestamp * sub_9845db70[address(arg1)][idx].field_1280) - (sub_9845db70[address(arg1)][idx].field_512 * sub_9845db70[address(arg1)][idx].field_1280) >= sub_9845db70[address(arg1)][idx].field_1024:
                        if 0 > -sub_9845db70[address(arg1)][idx].field_1024 - 1:
                            revert with 'NH{q', 17
                    else:
                        if 0 > (-1 * block.timestamp * sub_9845db70[address(arg1)][idx].field_1280) + (sub_9845db70[address(arg1)][idx].field_512 * sub_9845db70[address(arg1)][idx].field_1280) - 1:
                            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 25
        idx = idx + 1
        continue 
    return 0
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9845db70[address(msg.sender)][arg1].field_1536:
        revert with 0, 'already withdrawan'
    if sub_9845db70[address(msg.sender)][arg1].field_1544:
        revert with 0, 'already unstaked'
    if arg1 >= sub_ede85eb7[address(msg.sender)].field_1024:
        revert with 0, 'Invalid index'
    if not sub_9845db70[address(msg.sender)][arg1].field_768:
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][arg1].field_1544 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, 0 / percentDivider
    else:
        if sub_9845db70[address(msg.sender)][arg1].field_768 and unstakePercent > -1 / sub_9845db70[address(msg.sender)][arg1].field_768:
            revert with 'NH{q', 17
        if not sub_9845db70[address(msg.sender)][arg1].field_768:
            revert with 'NH{q', 18
        if sub_9845db70[address(msg.sender)][arg1].field_768 * unstakePercent / sub_9845db70[address(msg.sender)][arg1].field_768 != unstakePercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][arg1].field_1544 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, sub_9845db70[address(msg.sender)][arg1].field_768 * unstakePercent / percentDivider
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_9845db70[address(msg.sender)][arg1].field_768 > stakedTokens[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stakedTokens[address(msg.sender)] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    stakedTokens[address(msg.sender)] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_d287de4e > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_d287de4e + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_d287de4e:
        revert with 0, 'SafeMath: addition overflow'
    sub_d287de4e += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_ede85eb7[address(msg.sender)].field_512 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_512 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_ede85eb7[address(msg.sender)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_512 += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_9845db70[address(msg.sender)][arg1].field_768 > sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0]:
        revert with 0, 'user stake', 0
    if sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_9845db70[address(msg.sender)][arg1].field_0 >= 4:
        revert with 'NH{q', 50
    if sub_9845db70[address(msg.sender)][arg1].field_768 > sub_17827cbf[stor26[address(msg.sender)][arg1].field_0]:
        revert with 0, 'total stake', 0
    if sub_17827cbf[stor26[address(msg.sender)][arg1].field_0] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    if sub_9845db70[address(msg.sender)][arg1].field_0 >= 4:
        revert with 'NH{q', 50
    sub_17827cbf[stor26[address(msg.sender)][arg1].field_0] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if not sub_9e19401a[stor26[address(msg.sender)][arg1].field_0]:
        revert with 'NH{q', 17
    sub_9e19401a[stor26[address(msg.sender)][arg1].field_0]--
    emit UNSTAKE(msg.sender, sub_9845db70[address(msg.sender)][arg1].field_768);
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < 0:
        revert with 0, 'Invalid Time Period'
    if arg2 > 4:
        revert with 0, 'Invalid Time Period'
    if arg1 < 0:
        revert with 0, 'stake more than 0'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'insufficient balance'
    if not sub_ede85eb7[address(msg.sender)].field_1280:
        sub_ede85eb7[address(msg.sender)].field_1280 = 1
        if totalStakers == -1:
            revert with 'NH{q', 17
        totalStakers++
    if sub_ede85eb7[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_0 + arg1 < sub_ede85eb7[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_0 += arg1
    if stakedTokens[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if stakedTokens[address(msg.sender)] + arg1 < stakedTokens[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stakedTokens[address(msg.sender)] += arg1
    if totalStakedToken > -arg1 - 1:
        revert with 'NH{q', 17
    if totalStakedToken + arg1 < totalStakedToken:
        revert with 0, 'SafeMath: addition overflow'
    totalStakedToken += arg1
    if arg2 >= 4:
        revert with 'NH{q', 50
    if block.timestamp > -duration[arg2] - 1:
        revert with 'NH{q', 17
    if block.timestamp + duration[arg2] < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_256 = block.timestamp + duration[arg2]
    sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_512 = block.timestamp
    sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_768 = arg1
    if arg2 >= 4:
        revert with 'NH{q', 50
    if not arg1:
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_1024 = 0 / percentDivider
    else:
        if arg1 and bonus[arg2] > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * bonus[arg2] / arg1 != bonus[arg2]:
            revert with 0, 'SafeMath: multiplication overflow'
        if percentDivider <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not percentDivider:
            revert with 'NH{q', 18
        sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_1024 = arg1 * bonus[arg2] / percentDivider
    if arg2 >= 4:
        revert with 'NH{q', 50
    if duration[arg2] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not duration[arg2]:
        revert with 'NH{q', 18
    sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_1280 = sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_1024 / duration[arg2]
    sub_9845db70[address(msg.sender)][stor25[address(msg.sender)].field_1024].field_0 = arg2
    if sub_ede85eb7[address(msg.sender)].field_1024 == -1:
        revert with 'NH{q', 17
    sub_ede85eb7[address(msg.sender)].field_1024++
    if sub_c0102e16[address(msg.sender)][arg2] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_c0102e16[address(msg.sender)][arg2] + arg1 < sub_c0102e16[address(msg.sender)][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    sub_c0102e16[address(msg.sender)][arg2] += arg1
    if arg2 >= 4:
        revert with 'NH{q', 50
    if sub_17827cbf[arg2] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_17827cbf[arg2] + arg1 < sub_17827cbf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= 4:
        revert with 'NH{q', 50
    sub_17827cbf[arg2] += arg1
    if sub_9e19401a[arg2] == -1:
        revert with 'NH{q', 17
    sub_9e19401a[arg2]++
    emit STAKE(msg.sender, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9845db70[address(msg.sender)][arg1].field_1536:
        revert with 0, 'already withdrawan'
    if sub_9845db70[address(msg.sender)][arg1].field_1544:
        revert with 0, 'already unstaked'
    if sub_9845db70[address(msg.sender)][arg1].field_256 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot withdraw before stake duration'
    if arg1 >= sub_ede85eb7[address(msg.sender)].field_1024:
        revert with 0, 'Invalid index'
    sub_9845db70[address(msg.sender)][arg1].field_1536 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, sub_9845db70[address(msg.sender)][arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_9845db70[address(msg.sender)][arg1].field_768 > stakedTokens[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stakedTokens[address(msg.sender)] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    stakedTokens[address(msg.sender)] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_c7c695f0 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_c7c695f0 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_c7c695f0:
        revert with 0, 'SafeMath: addition overflow'
    sub_c7c695f0 += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_c0372838 > -sub_9845db70[address(msg.sender)][arg1].field_1024 - 1:
        revert with 'NH{q', 17
    if sub_c0372838 + sub_9845db70[address(msg.sender)][arg1].field_1024 < sub_c0372838:
        revert with 0, 'SafeMath: addition overflow'
    sub_c0372838 += sub_9845db70[address(msg.sender)][arg1].field_1024
    if sub_ede85eb7[address(msg.sender)].field_256 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_256 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_ede85eb7[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_256 += sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_ede85eb7[address(msg.sender)].field_768 > -sub_9845db70[address(msg.sender)][arg1].field_1024 - 1:
        revert with 'NH{q', 17
    if sub_ede85eb7[address(msg.sender)].field_768 + sub_9845db70[address(msg.sender)][arg1].field_1024 < sub_ede85eb7[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    sub_ede85eb7[address(msg.sender)].field_768 += sub_9845db70[address(msg.sender)][arg1].field_1024
    if sub_9845db70[address(msg.sender)][arg1].field_768 > sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0]:
        revert with 0, 'user stake', 0
    if sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    sub_c0102e16[address(msg.sender)][stor26[address(msg.sender)][arg1].field_0] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if sub_9845db70[address(msg.sender)][arg1].field_0 >= 4:
        revert with 'NH{q', 50
    if sub_9845db70[address(msg.sender)][arg1].field_768 > sub_17827cbf[stor26[address(msg.sender)][arg1].field_0]:
        revert with 0, 'total stake', 0
    if sub_17827cbf[stor26[address(msg.sender)][arg1].field_0] < sub_9845db70[address(msg.sender)][arg1].field_768:
        revert with 'NH{q', 17
    if sub_9845db70[address(msg.sender)][arg1].field_0 >= 4:
        revert with 'NH{q', 50
    sub_17827cbf[stor26[address(msg.sender)][arg1].field_0] -= sub_9845db70[address(msg.sender)][arg1].field_768
    if not sub_9e19401a[stor26[address(msg.sender)][arg1].field_0]:
        revert with 'NH{q', 17
    sub_9e19401a[stor26[address(msg.sender)][arg1].field_0]--
    if sub_9845db70[address(msg.sender)][arg1].field_1024 > -sub_9845db70[address(msg.sender)][arg1].field_768 - 1:
        revert with 'NH{q', 17
    if sub_9845db70[address(msg.sender)][arg1].field_1024 + sub_9845db70[address(msg.sender)][arg1].field_768 < sub_9845db70[address(msg.sender)][arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    emit WITHDRAW(msg.sender, sub_9845db70[address(msg.sender)][arg1].field_1024 + sub_9845db70[address(msg.sender)][arg1].field_768);
}



}
