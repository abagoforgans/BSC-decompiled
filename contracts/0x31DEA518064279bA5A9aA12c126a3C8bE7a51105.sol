contract main {




// =====================  Runtime code  =====================


const cliffTime = (24 * 3600)

const stakingFeeRate = 100

const rewardRate = 37500

const tokenAddress = 0xbb5a9898804319f8f78f9720183da9c81a41b1c8

const rewardInterval = (8760 * 24 * 3600)

const unstakingFeeRate = 50


address owner;
uint256 totalClaimedRewards;
array of struct stor2;
mapping of uint256 stor3;
mapping of uint256 depositedTokens;
mapping of uint256 stakingTime;
mapping of uint256 lastClaimedTime;
mapping of uint256 totalEarnedTokens;

function getNumberOfHolders() payable {
    return stor2.length
}

function stakingTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakingTime[arg1]
}

function totalEarnedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalEarnedTokens[arg1]
}

function owner() payable {
    return owner
}

function depositedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositedTokens[arg1]
}

function totalClaimedRewards() payable {
    return totalClaimedRewards
}

function lastClaimedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimedTime[arg1]
}

function _fallback() payable {
    revert
}

function sub_ea8172a0(?) payable {
    if totalClaimedRewards >= 7250 * 10^18:
        return 0
    require totalClaimedRewards <= 7250 * 10^18
    return (-totalClaimedRewards + 7250 * 10^18)
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
    if arg1 == 0xbb5a9898804319f8f78f9720183da9c81a41b1c8:
        if totalClaimedRewards >= 7250 * 10^18:
            require arg3 <= 0
        else:
            require totalClaimedRewards <= 7250 * 10^18
            require arg3 <= -totalClaimedRewards + 7250 * 10^18
        require totalClaimedRewards + arg3 >= totalClaimedRewards
        totalClaimedRewards += arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    require lastClaimedTime[address(arg1)] <= block.timestamp
    if not depositedTokens[address(arg1)]:
        if not 37500 * depositedTokens[address(arg1)]:
            return ((37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 8760 * 24 * 3600 / 10000)
        if 37500 * depositedTokens[address(arg1)]:
            if (37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 37500 * depositedTokens[address(arg1)] == block.timestamp - lastClaimedTime[address(arg1)]:
                return ((37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 8760 * 24 * 3600 / 10000)
    else:
        if depositedTokens[address(arg1)]:
            if 37500 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 37500:
                if not 37500 * depositedTokens[address(arg1)]:
                    return ((37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 8760 * 24 * 3600 / 10000)
                if 37500 * depositedTokens[address(arg1)]:
                    if (37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 37500 * depositedTokens[address(arg1)] == block.timestamp - lastClaimedTime[address(arg1)]:
                        return ((37500 * block.timestamp * depositedTokens[address(arg1)]) - (37500 * lastClaimedTime[address(arg1)] * depositedTokens[address(arg1)]) / 8760 * 24 * 3600 / 10000)
    revert
}

function claimDivs() payable {
    if stor3[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastClaimedTime[address(msg.sender)] <= block.timestamp
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require 37500 * depositedTokens[address(msg.sender)] / depositedTokens[address(msg.sender)] == 37500
            if 37500 * depositedTokens[address(msg.sender)]:
                require 37500 * depositedTokens[address(msg.sender)]
                require (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 37500 * depositedTokens[address(msg.sender)] == block.timestamp - lastClaimedTime[address(msg.sender)]
            if (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000 > 0:
                require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
                call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require totalEarnedTokens[address(msg.sender)] + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                require totalClaimedRewards + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                totalClaimedRewards += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                emit RewardsTransferred(msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot deposit 0 Tokens'
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Token Allowance'
    if stor3[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastClaimedTime[address(msg.sender)] <= block.timestamp
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require 37500 * depositedTokens[address(msg.sender)] / depositedTokens[address(msg.sender)] == 37500
            if 37500 * depositedTokens[address(msg.sender)]:
                require 37500 * depositedTokens[address(msg.sender)]
                require (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 37500 * depositedTokens[address(msg.sender)] == block.timestamp - lastClaimedTime[address(msg.sender)]
            if (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000 > 0:
                require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
                call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require totalEarnedTokens[address(msg.sender)] + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                require totalClaimedRewards + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                totalClaimedRewards += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                emit RewardsTransferred(msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    if arg1:
        require arg1
        require 100 * arg1 / arg1 == 100
    require 100 * arg1 / 10000 <= arg1
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
         gas gas_remaining wei
        args owner, 100 * arg1 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer deposit fee.'
    require depositedTokens[address(msg.sender)] + arg1 - (100 * arg1 / 10000) >= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] = depositedTokens[address(msg.sender)] + arg1 - (100 * arg1 / 10000)
    if not stor3[address(msg.sender)]:
        if not stor3[address(msg.sender)]:
            stor2.length++
            stor2[stor2.length].field_0 = msg.sender
            stor2[stor2.length].field_160 = 0
            stor3[address(msg.sender)] = stor2.length
        stakingTime[address(msg.sender)] = block.timestamp
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if depositedTokens[address(msg.sender)] < arg1:
        revert with 0, 'Invalid amount to withdraw'
    require stakingTime[address(msg.sender)] <= block.timestamp
    if block.timestamp - stakingTime[address(msg.sender)] <= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe596f7520726563656e746c79207374616b65642c20706c656173652077616974206265666f7265207769746864726177696e67,
                    mem[216 len 12]
    if stor3[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastClaimedTime[address(msg.sender)] <= block.timestamp
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require 37500 * depositedTokens[address(msg.sender)] / depositedTokens[address(msg.sender)] == 37500
            if 37500 * depositedTokens[address(msg.sender)]:
                require 37500 * depositedTokens[address(msg.sender)]
                require (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 37500 * depositedTokens[address(msg.sender)] == block.timestamp - lastClaimedTime[address(msg.sender)]
            if (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000 > 0:
                require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
                call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require totalEarnedTokens[address(msg.sender)] + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                require totalClaimedRewards + ((37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000) >= totalClaimedRewards
                totalClaimedRewards += (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000
                emit RewardsTransferred(msg.sender, (37500 * block.timestamp * depositedTokens[address(msg.sender)]) - (37500 * lastClaimedTime[address(msg.sender)] * depositedTokens[address(msg.sender)]) / 8760 * 24 * 3600 / 10000);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    if arg1:
        require arg1
        require 50 * arg1 / arg1 == 50
    require 50 * arg1 / 10000 <= arg1
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
         gas gas_remaining wei
        args owner, 50 * arg1 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer withdraw fee.'
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 - (50 * arg1 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] -= arg1
    if stor3[address(msg.sender)]:
        if not depositedTokens[address(msg.sender)]:
            if stor3[address(msg.sender)]:
                require stor2.length - 1 < stor2.length
                require stor3[address(msg.sender)] - 1 < stor2.length
                stor2[stor3[address(msg.sender)]].field_0 = stor2[stor2.length].field_0
                stor3[stor2[stor2.length].field_0] = stor3[address(msg.sender)]
                require stor2.length
                stor2[stor2.length].field_0 = 0
                stor2.length--
                stor3[address(msg.sender)] = 0
}



}
