contract main {




// =====================  Runtime code  =====================


#
#  - getStakersList(uint256 arg1, uint256 arg2)
#
const trustedRewardTokenAddress = 0x4e104e487a78be62596f54c96a36f5af954d3cb9

const trustedStakeTokenAddress = 0xa27bad33fca7f225fccd392da0b434b568112ff9

const rewardInterval = (8760 * 24 * 3600)


address owner;
uint256 rewardRatePercentX100;
uint256 totalClaimedRewards;
uint256 stakingDuration;
uint256 adminCanClaimAfter;
uint256 stakingDeployTime;
uint256 adminClaimableTime;
uint256 stakingEndTime;
array of struct stor8;
mapping of uint256 stor9;
mapping of uint256 depositedTokens;
mapping of uint256 stakingTime;
mapping of uint256 lastClaimedTime;
mapping of uint256 totalEarnedTokens;

function getNumberOfHolders() payable {
    return stor8.length
}

function stakingTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakingTime[arg1]
}

function totalEarnedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalEarnedTokens[arg1]
}

function stakingDuration() payable {
    return stakingDuration
}

function stakingEndTime() payable {
    return stakingEndTime
}

function owner() payable {
    return owner
}

function stakingDeployTime() payable {
    return stakingDeployTime
}

function rewardRatePercentX100() payable {
    return rewardRatePercentX100
}

function depositedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositedTokens[arg1]
}

function adminClaimableTime() payable {
    return adminClaimableTime
}

function totalClaimedRewards() payable {
    return totalClaimedRewards
}

function adminCanClaimAfter() payable {
    return adminCanClaimAfter
}

function lastClaimedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimedTime[arg1]
}

function _fallback() payable {
    revert
}

function setRewardRatePercentX100(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rewardRatePercentX100 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferAnyERC20Tokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 == 0xa27bad33fca7f225fccd392da0b434b568112ff9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7341646d696e2063616e6e6f74207472616e73666572206f7574205374616b6520546f6b656e732066726f6d207468697320636f6e7472616374,
                    mem[222 len 6]
    if arg1 == 0x4e104e487a78be62596f54c96a36f5af954d3cb9:
        if block.timestamp <= adminClaimableTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2141646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e7320796574,
                        mem[208 len 20]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyUnstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot unstake 0 Tokens'
    if depositedTokens[address(msg.sender)] < arg1:
        revert with 0, 'Invalid amount to withdraw'
    lastClaimedTime[address(msg.sender)] = block.timestamp
    require ext_code.size(0xa27bad33fca7f225fccd392da0b434b568112ff9)
    call 0xa27bad33fca7f225fccd392da0b434b568112ff9.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] -= arg1
    if stor9[address(msg.sender)]:
        if not depositedTokens[address(msg.sender)]:
            if stor9[address(msg.sender)]:
                require stor8.length - 1 < stor8.length
                require stor9[address(msg.sender)] - 1 < stor8.length
                stor8[stor9[address(msg.sender)]].field_0 = stor8[stor8.length].field_0
                stor9[stor8[stor8.length].field_0] = stor9[address(msg.sender)]
                require stor8.length
                stor8[stor8.length].field_0 = 0
                stor8.length--
                stor9[address(msg.sender)] = 0
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor9[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    if block.timestamp <= stakingEndTime:
        if lastClaimedTime[address(arg1)] >= block.timestamp:
            if not depositedTokens[address(arg1)]:
                if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                    return 0
                if depositedTokens[address(arg1)] * rewardRatePercentX100:
                    if not 0 / depositedTokens[address(arg1)] * rewardRatePercentX100:
                        return 0
            else:
                if depositedTokens[address(arg1)]:
                    if depositedTokens[address(arg1)] * rewardRatePercentX100 / depositedTokens[address(arg1)] == rewardRatePercentX100:
                        if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                            return 0
                        if depositedTokens[address(arg1)] * rewardRatePercentX100:
                            if not 0 / depositedTokens[address(arg1)] * rewardRatePercentX100:
                                return 0
        else:
            if lastClaimedTime[address(arg1)] <= block.timestamp:
                if not depositedTokens[address(arg1)]:
                    if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                        return ((block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                    if depositedTokens[address(arg1)] * rewardRatePercentX100:
                        if (block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / depositedTokens[address(arg1)] * rewardRatePercentX100 == block.timestamp - lastClaimedTime[address(arg1)]:
                            return ((block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                else:
                    if depositedTokens[address(arg1)]:
                        if depositedTokens[address(arg1)] * rewardRatePercentX100 / depositedTokens[address(arg1)] == rewardRatePercentX100:
                            if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                                return ((block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                            if depositedTokens[address(arg1)] * rewardRatePercentX100:
                                if (block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / depositedTokens[address(arg1)] * rewardRatePercentX100 == block.timestamp - lastClaimedTime[address(arg1)]:
                                    return ((block.timestamp * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
    else:
        if lastClaimedTime[address(arg1)] >= stakingEndTime:
            if not depositedTokens[address(arg1)]:
                if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                    return 0
                if depositedTokens[address(arg1)] * rewardRatePercentX100:
                    if not 0 / depositedTokens[address(arg1)] * rewardRatePercentX100:
                        return 0
            else:
                if depositedTokens[address(arg1)]:
                    if depositedTokens[address(arg1)] * rewardRatePercentX100 / depositedTokens[address(arg1)] == rewardRatePercentX100:
                        if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                            return 0
                        if depositedTokens[address(arg1)] * rewardRatePercentX100:
                            if not 0 / depositedTokens[address(arg1)] * rewardRatePercentX100:
                                return 0
        else:
            if lastClaimedTime[address(arg1)] <= stakingEndTime:
                if not depositedTokens[address(arg1)]:
                    if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                        return ((stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                    if depositedTokens[address(arg1)] * rewardRatePercentX100:
                        if (stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / depositedTokens[address(arg1)] * rewardRatePercentX100 == stakingEndTime - lastClaimedTime[address(arg1)]:
                            return ((stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                else:
                    if depositedTokens[address(arg1)]:
                        if depositedTokens[address(arg1)] * rewardRatePercentX100 / depositedTokens[address(arg1)] == rewardRatePercentX100:
                            if not depositedTokens[address(arg1)] * rewardRatePercentX100:
                                return ((stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
                            if depositedTokens[address(arg1)] * rewardRatePercentX100:
                                if (stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / depositedTokens[address(arg1)] * rewardRatePercentX100 == stakingEndTime - lastClaimedTime[address(arg1)]:
                                    return ((stakingEndTime * depositedTokens[address(arg1)] * rewardRatePercentX100) - (lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000)
    revert
}

function claim() payable {
    if stor9[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            if block.timestamp <= stakingEndTime:
                if lastClaimedTime[address(msg.sender)] >= block.timestamp:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= block.timestamp
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == block.timestamp - lastClaimedTime[address(msg.sender)]
                    if (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
            else:
                if lastClaimedTime[address(msg.sender)] >= stakingEndTime:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= stakingEndTime
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == stakingEndTime - lastClaimedTime[address(msg.sender)]
                    if (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot stake 0 Tokens'
    require ext_code.size(0xa27bad33fca7f225fccd392da0b434b568112ff9)
    call 0xa27bad33fca7f225fccd392da0b434b568112ff9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Token Allowance'
    if stor9[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            if block.timestamp <= stakingEndTime:
                if lastClaimedTime[address(msg.sender)] >= block.timestamp:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= block.timestamp
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == block.timestamp - lastClaimedTime[address(msg.sender)]
                    if (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
            else:
                if lastClaimedTime[address(msg.sender)] >= stakingEndTime:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= stakingEndTime
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == stakingEndTime - lastClaimedTime[address(msg.sender)]
                    if (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    require depositedTokens[address(msg.sender)] + arg1 >= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] += arg1
    if not stor9[address(msg.sender)]:
        if not stor9[address(msg.sender)]:
            stor8.length++
            stor8[stor8.length].field_0 = msg.sender
            stor8[stor8.length].field_160 = 0
            stor9[address(msg.sender)] = stor8.length
        stakingTime[address(msg.sender)] = block.timestamp
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot unstake 0 Tokens'
    if depositedTokens[address(msg.sender)] < arg1:
        revert with 0, 'Invalid amount to withdraw'
    if stor9[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            if block.timestamp <= stakingEndTime:
                if lastClaimedTime[address(msg.sender)] >= block.timestamp:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= block.timestamp
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == block.timestamp - lastClaimedTime[address(msg.sender)]
                    if (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (block.timestamp * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
            else:
                if lastClaimedTime[address(msg.sender)] >= stakingEndTime:
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require not 0 / depositedTokens[address(msg.sender)] * rewardRatePercentX100
                else:
                    require lastClaimedTime[address(msg.sender)] <= stakingEndTime
                    if depositedTokens[address(msg.sender)]:
                        require depositedTokens[address(msg.sender)]
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100 / depositedTokens[address(msg.sender)] == rewardRatePercentX100
                    if depositedTokens[address(msg.sender)] * rewardRatePercentX100:
                        require depositedTokens[address(msg.sender)] * rewardRatePercentX100
                        require (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / depositedTokens[address(msg.sender)] * rewardRatePercentX100 == stakingEndTime - lastClaimedTime[address(msg.sender)]
                    if (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(0x4e104e487a78be62596f54c96a36f5af954d3cb9)
                        call 0x4e104e487a78be62596f54c96a36f5af954d3cb9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        require totalEarnedTokens[address(msg.sender)] + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                        totalEarnedTokens[address(msg.sender)] += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        require totalClaimedRewards + ((stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                        totalClaimedRewards += (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000
                        emit RewardsTransferred(msg.sender, (stakingEndTime * depositedTokens[address(msg.sender)] * rewardRatePercentX100) - (lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)] * rewardRatePercentX100) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    require ext_code.size(0xa27bad33fca7f225fccd392da0b434b568112ff9)
    call 0xa27bad33fca7f225fccd392da0b434b568112ff9.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] -= arg1
    if stor9[address(msg.sender)]:
        if not depositedTokens[address(msg.sender)]:
            if stor9[address(msg.sender)]:
                require stor8.length - 1 < stor8.length
                require stor9[address(msg.sender)] - 1 < stor8.length
                stor8[stor9[address(msg.sender)]].field_0 = stor8[stor8.length].field_0
                stor9[stor8[stor8.length].field_0] = stor9[address(msg.sender)]
                require stor8.length
                stor8[stor8.length].field_0 = 0
                stor8.length--
                stor9[address(msg.sender)] = 0
}



}
