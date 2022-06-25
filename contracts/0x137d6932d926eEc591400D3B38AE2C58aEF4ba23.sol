contract main {




// =====================  Runtime code  =====================


address rewardsTokenAddress;
address stakingTokenAddress;
uint256 totalStaked;
mapping of uint256 sub_23fc91e4;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stakers;
uint256 rewardRate;
address stor8;
mapping of uint256 sub_032e26b6;

function sub_032e26b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_032e26b6[arg1]
}

function getTotalStaked() {
    return totalStaked
}

function sub_23fc91e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_23fc91e4[address(arg1)]
}

function stakingBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_23fc91e4[arg1]
}

function stakingToken() {
    return stakingTokenAddress
}

function rewardRate() {
    return rewardRate
}

function getRewardRate() {
    return rewardRate
}

function totalStaked() {
    return totalStaked
}

function isStakingAtm(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function hasStaked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function rewardsToken() {
    return rewardsTokenAddress
}

function stakers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return stakers[arg1]
}

function _fallback() payable {
    revert
}

function sub_2f91aff6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'User Not Authorized'
    rewardRate = arg1
}

function changeAdminAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'UnAuthorized to take this action'
    stor8 = arg1
}

function sub_77c3ccf1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor5[address(arg1)]) != 1:
        return 0
    if block.timestamp < sub_032e26b6[address(arg1)]:
        revert with 'NH{q', 17
    return (block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30)
}

function calculateUserRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[address(arg1)]) != 1:
        return 0
    if block.timestamp < sub_032e26b6[address(arg1)]:
        revert with 'NH{q', 17
    if block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30 and rewardRate > -1 / block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30:
        revert with 'NH{q', 17
    if block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30 * rewardRate and sub_23fc91e4[address(arg1)] > -1 / block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30 * rewardRate:
        revert with 'NH{q', 17
    return (block.timestamp - sub_032e26b6[address(arg1)] / 24 * 3600 / 30 * rewardRate * sub_23fc91e4[address(arg1)] / 100)
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalStaked > -arg1 - 1:
        revert with 'NH{q', 17
    totalStaked += arg1
    if sub_23fc91e4[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_23fc91e4[address(msg.sender)] += arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not stor4[address(msg.sender)]:
        stakers.length++
        stakers[stakers.length] = msg.sender
        stor4[address(msg.sender)] = 1
    if not stor5[address(msg.sender)]:
        sub_032e26b6[address(msg.sender)] = block.timestamp
    stor5[address(msg.sender)] = 1
}

function claimReward() {
    if bool(stor5[address(msg.sender)]) != 1:
        if bool(stor5[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You Can't Claim Rewards In Less than a Month'
        if block.timestamp < sub_032e26b6[address(msg.sender)]:
            revert with 'NH{q', 17
        if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You Can't Claim Rewards In Less than a Month'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rewards is too small to be claimed'
    if block.timestamp < sub_032e26b6[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 and rewardRate > -1 / block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30:
        revert with 'NH{q', 17
    if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate and sub_23fc91e4[address(msg.sender)] > -1 / block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate:
        revert with 'NH{q', 17
    if bool(stor5[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You Can't Claim Rewards In Less than a Month'
    if block.timestamp < sub_032e26b6[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You Can't Claim Rewards In Less than a Month'
    if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate * sub_23fc91e4[address(msg.sender)] / 100 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rewards is too small to be claimed'
    if block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate * sub_23fc91e4[address(msg.sender)] / 100 and 10^18 > -1 / block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate * sub_23fc91e4[address(msg.sender)] / 100:
        revert with 'NH{q', 17
    require ext_code.size(rewardsTokenAddress)
    call rewardsTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * block.timestamp - sub_032e26b6[address(msg.sender)] / 24 * 3600 / 30 * rewardRate * sub_23fc91e4[address(msg.sender)] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_23fc91e4[address(msg.sender)] and 10^18 > -1 / sub_23fc91e4[address(msg.sender)]:
        revert with 'NH{q', 17
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * sub_23fc91e4[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStaked < sub_23fc91e4[address(msg.sender)]:
        revert with 'NH{q', 17
    totalStaked -= sub_23fc91e4[address(msg.sender)]
    sub_23fc91e4[address(msg.sender)] = 0
    stor5[address(msg.sender)] = 0
}



}
