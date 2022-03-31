contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - withdrawAll()
#  - deposit(uint256 arg1)
#  - setRewardsToken(address arg1)
#  - depositAll()
#  - setMinter(address arg1)
#  - initialize(uint256 arg1)
#
const priceShare = 10^18

const poolType = 4


uint32 stor51;
address owner;
uint256 stor51;
uint256 lastPauseTime;
uint8 paused;
mapping of uint8 stor153;
address keeperAddress;
address stakingTokenAddress;
address stor206;
address rewardsDistributionAddress;
address rewardsTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 balance;
mapping of uint256 sharesOf;
uint256 pid;
mapping of uint256 depositedAt;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return balance
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[address(arg1)]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function rewardsDistribution() payable {
    return rewardsDistributionAddress
}

function paused() payable {
    return bool(paused)
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return address(owner)
}

function lastPauseTime() payable {
    return lastPauseTime
}

function keeper() payable {
    return keeperAddress
}

function balance() payable {
    return balance
}

function isWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[address(arg1)])
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function pid() payable {
    return pid
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setRewardsDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsDistributionAddress = arg1
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor153[address(arg1)] = uint8(arg2)
    emit Whitelisted(arg2, arg1);
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardsDuration * rewardRate)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(paused):
        paused = uint8(arg1)
        if uint8(arg1):
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(paused));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if keeperAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: caller is not the owner or keeper'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: invalid keeper address'
    keeperAddress = arg1
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'VaultFlipToCake: reward duration can only be updated after the period ends'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function minter() payable {
    if stor206:
        require ext_code.size(stor206)
        staticcall stor206.0xaa271e1a with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return stor206
        else:
            return 0
    else:
        return 0
}

function harvest() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x441a3e70 with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardsTokenAddress)
    call rewardsTokenAddress.0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
}

function recoverToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultFlipToCake: cannot recover underlying token'
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x72f702f3 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 == ext_call.return_data[12 len 20]:
        revert with 0, 'VaultFlipToCake: cannot recover underlying token'
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit Recovered(address(arg1), arg2);
}

function rewardPerToken() payable {
    if 0 == balance:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PausableUpgradeable: caller is not the rewardsDistribution'
    if balance != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 'SafeMath: division by zero', 0
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = arg1 / rewardsDuration
        else:
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0, 'SafeMath: multiplication overflow'
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 'SafeMath: division by zero', 0
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'VaultFlipToCake: reward rate must be in the right range'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not sharesOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not sharesOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sharesOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
}



}
