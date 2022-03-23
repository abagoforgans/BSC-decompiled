contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - burnFrom(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
address airdrop_makerAddress;
bool stor9;
uint256 stor9; offset 1
uint256 unlock_amount;
mapping of uint8 stor10;
mapping of uint256 startBlock;
mapping of uint8 stor12;
uint256 currentRate;
uint256 rewardRate;
uint256 lastBlock;
uint256 totalStakingWeight;
uint256 totalStakingAmount;
uint256 stakingRewardPool;
mapping of uint8 stor19;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function unlock_amount() payable {
    return unlock_amount
}

function decimals() payable {
    return decimals
}

function stakingRewardPool() payable {
    return stakingRewardPool
}

function startBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return startBlock[arg1]
}

function totalStakingWeight() payable {
    return totalStakingWeight
}

function rewardRate() payable {
    return rewardRate
}

function lastBlock() payable {
    return lastBlock
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function gateways(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function airdrop_maker() payable {
    return airdrop_makerAddress
}

function excludeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function locked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function totalStakingAmount() payable {
    return totalStakingAmount
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function currentRate() payable {
    return currentRate
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAirdropMaker(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdrop_makerAddress = arg1
    return 1
}

function changeGateway(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
    emit ChangeGateway(address(arg1), arg2);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 10^6
    if block.number > lastBlock:
        lastBlock = block.number
        totalStakingWeight = totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)
        if rewardRate:
            if stor2[1] >= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18:
                stor2[1] -= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
            else:
                stor2[1] = 0
                if stakingRewardPool + stor2[1] < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += stor2[1]
    currentRate = arg1
    rewardRate = 10^18 * arg1 / 292000 * 3600
    return 1
}

function airdrop(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if block.number > lastBlock:
        lastBlock = block.number
        totalStakingWeight = totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)
        if rewardRate:
            if stor2[1] >= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18:
                stor2[1] -= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
            else:
                stor2[1] = 0
                if stakingRewardPool + stor2[1] < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += stor2[1]
    if airdrop_makerAddress != msg.sender:
        revert with 0, 'Not airdrop maker'
    if arg2 * arg1.length > stor2[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor2[address(msg.sender)] += -1 * arg2 * arg1.length
    if not stor12[address(msg.sender)]:
        s = totalStakingAmount
        idx = arg1.length
        while idx > 0:
            require idx - 1 < arg1.length
            stor10[address(cd[((32 * idx - 1) + arg1 + 36)])] = 1
            if stor2[address(cd[((32 * idx - 1) + arg1 + 36)])] + arg2 < stor2[address(cd[((32 * idx - 1) + arg1 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx - 1) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx - 1) + arg1 + 36)])] += arg2
            mem[192] = arg2
            emit Transfer(arg2, msg.sender, address(cd[((32 * idx - 1) + arg1 + 36)]));
            if not stor12[address(cd[((32 * idx - 1) + arg1 + 36)])]:
                s = s
                idx = idx - 1
                continue 
            s = s - arg2
            idx = idx - 1
            continue 
    else:
        s = totalStakingAmount + (arg2 * arg1.length)
        idx = arg1.length
        while idx > 0:
            require idx - 1 < arg1.length
            stor10[address(cd[((32 * idx - 1) + arg1 + 36)])] = 1
            if stor2[address(cd[((32 * idx - 1) + arg1 + 36)])] + arg2 < stor2[address(cd[((32 * idx - 1) + arg1 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx - 1) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx - 1) + arg1 + 36)])] += arg2
            mem[192] = arg2
            emit Transfer(arg2, msg.sender, address(cd[((32 * idx - 1) + arg1 + 36)]));
            if not stor12[address(cd[((32 * idx - 1) + arg1 + 36)])]:
                s = s
                idx = idx - 1
                continue 
            s = s - arg2
            idx = idx - 1
            continue 
    totalStakingAmount = s
    bool(stor9.field_0) = 0
    uint255(stor9.field_1) = uint255(arg2)
    return 1
}

function calculateReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stakingRewardPool:
        return 0
    if not stor2[address(arg1)]:
        return 0
    if stor12[address(arg1)]:
        return 0
    if startBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - startBlock[address(arg1)]:
        if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
            revert with 0, 'SafeMath: addition overflow'
        if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) <= stor2[1]:
            if not stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                    return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
            else:
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                    if 0 / stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
        else:
            if not stor2[1]:
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                    return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
            else:
                if stor2[1]:
                    if 0 / stor2[1]:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
    else:
        if block.number - startBlock[address(arg1)]:
            if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) / block.number - startBlock[address(arg1)] != stor2[address(arg1)]:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                revert with 0, 'SafeMath: addition overflow'
            if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) <= stor2[1]:
                if not stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
                else:
                    if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                        if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) + (block.number * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) - (startBlock[address(arg1)] * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) / stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                            return ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) + (block.number * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) - (startBlock[address(arg1)] * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
            else:
                if not stor2[1]:
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
                else:
                    if stor2[1]:
                        if (block.number * stor2[address(arg1)] * stor2[1]) - (startBlock[address(arg1)] * stor2[address(arg1)] * stor2[1]) / stor2[1] != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                            return ((block.number * stor2[address(arg1)] * stor2[1]) - (startBlock[address(arg1)] * stor2[address(arg1)] * stor2[1]) / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount))
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor19[address(msg.sender)]:
        revert with 0, 'Caller is not the gateway'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if block.number > lastBlock:
        lastBlock = block.number
        totalStakingWeight = totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)
        if rewardRate:
            if stor2[1] >= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18:
                stor2[1] -= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
            else:
                stor2[1] = 0
                if stakingRewardPool + stor2[1] < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += stor2[1]
    if not stor12[address(arg1)]:
        if not stor12[address(arg1)]:
            if not stor2[address(arg1)]:
                startBlock[address(arg1)] = block.number
            else:
                if startBlock[address(arg1)] > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - startBlock[address(arg1)]:
                    if stakingRewardPool:
                        require stakingRewardPool
                        if 0 / stakingRewardPool:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakingWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakingWeight
                    if 0 > totalStakingWeight:
                        revert with 0, 'SafeMath: subtraction overflow'
                    startBlock[address(arg1)] = block.number
                    if 0 / totalStakingWeight:
                        if stor2[address(arg1)] + (0 / totalStakingWeight) < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += 0 / totalStakingWeight
                        if totalStakingAmount + (0 / totalStakingWeight) < totalStakingAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakingAmount += 0 / totalStakingWeight
                        if 0 / totalStakingWeight > stakingRewardPool:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stakingRewardPool -= 0 / totalStakingWeight
                else:
                    require block.number - startBlock[address(arg1)]
                    if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) / block.number - startBlock[address(arg1)] != stor2[address(arg1)]:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not stakingRewardPool:
                        if totalStakingWeight <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakingWeight
                        if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) > totalStakingWeight:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStakingWeight = totalStakingWeight - (block.number * stor2[address(arg1)]) + (startBlock[address(arg1)] * stor2[address(arg1)])
                        startBlock[address(arg1)] = block.number
                        if 0 / totalStakingWeight:
                            if stor2[address(arg1)] + (0 / totalStakingWeight) < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += 0 / totalStakingWeight
                            if totalStakingAmount + (0 / totalStakingWeight) < totalStakingAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakingAmount += 0 / totalStakingWeight
                            if 0 / totalStakingWeight > stakingRewardPool:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakingRewardPool -= 0 / totalStakingWeight
                    else:
                        require stakingRewardPool
                        if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / stakingRewardPool != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakingWeight
                        if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) > totalStakingWeight:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStakingWeight = totalStakingWeight - (block.number * stor2[address(arg1)]) + (startBlock[address(arg1)] * stor2[address(arg1)])
                        startBlock[address(arg1)] = block.number
                        if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight:
                            if stor2[address(arg1)] + ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight) < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
                            if totalStakingAmount + ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight) < totalStakingAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakingAmount += (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
                            if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight > stakingRewardPool:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakingRewardPool -= (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
        if totalStakingAmount + arg2 < totalStakingAmount:
            revert with 0, 'SafeMath: addition overflow'
        totalStakingAmount += arg2
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor2[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stakingRewardPool:
        return stor2[address(arg1)]
    if not stor2[address(arg1)]:
        return stor2[address(arg1)]
    if stor12[address(arg1)]:
        return stor2[address(arg1)]
    if startBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - startBlock[address(arg1)]:
        if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
            revert with 0, 'SafeMath: addition overflow'
        if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) <= stor2[1]:
            if not stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                    return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
            else:
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                    if 0 / stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
        else:
            if not stor2[1]:
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                    return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
            else:
                if stor2[1]:
                    if 0 / stor2[1]:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
    else:
        if block.number - startBlock[address(arg1)]:
            if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) / block.number - startBlock[address(arg1)] != stor2[address(arg1)]:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                revert with 0, 'SafeMath: addition overflow'
            if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) <= stor2[1]:
                if not stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
                else:
                    if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18):
                        if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) + (block.number * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) - (startBlock[address(arg1)] * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) / stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                            return (stor2[address(arg1)] + ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) + (block.number * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) - (startBlock[address(arg1)] * stor2[address(arg1)] * (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
            else:
                if not stor2[1]:
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                        return (stor2[address(arg1)] + (0 / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
                else:
                    if stor2[1]:
                        if (block.number * stor2[address(arg1)] * stor2[1]) - (startBlock[address(arg1)] * stor2[address(arg1)] * stor2[1]) / stor2[1] != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount):
                            return (stor2[address(arg1)] + ((block.number * stor2[address(arg1)] * stor2[1]) - (startBlock[address(arg1)] * stor2[address(arg1)] * stor2[1]) / totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)))
    revert
}

function setExcludeReward(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number > lastBlock:
        lastBlock = block.number
        totalStakingWeight = totalStakingWeight + (block.number * totalStakingAmount) - (lastBlock * totalStakingAmount)
        if rewardRate:
            if stor2[1] >= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18:
                stor2[1] -= (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
                if stakingRewardPool + ((block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18) < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += (block.number * totalStakingAmount * rewardRate) - (lastBlock * totalStakingAmount * rewardRate) / 10^18
            else:
                stor2[1] = 0
                if stakingRewardPool + stor2[1] < stakingRewardPool:
                    revert with 0, 'SafeMath: addition overflow'
                stakingRewardPool += stor2[1]
    if bool(stor12[address(arg1)]) != arg2:
        if not arg2:
            startBlock[address(arg1)] = block.number
            if totalStakingAmount + stor2[address(arg1)] < totalStakingAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalStakingAmount += stor2[address(arg1)]
        else:
            if not stor12[address(arg1)]:
                if not stor2[address(arg1)]:
                    startBlock[address(arg1)] = block.number
                else:
                    if startBlock[address(arg1)] > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - startBlock[address(arg1)]:
                        if stakingRewardPool:
                            require stakingRewardPool
                            if 0 / stakingRewardPool:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStakingWeight <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakingWeight
                        if 0 > totalStakingWeight:
                            revert with 0, 'SafeMath: subtraction overflow'
                        startBlock[address(arg1)] = block.number
                        if 0 / totalStakingWeight:
                            if stor2[address(arg1)] + (0 / totalStakingWeight) < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += 0 / totalStakingWeight
                            if totalStakingAmount + (0 / totalStakingWeight) < totalStakingAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakingAmount += 0 / totalStakingWeight
                            if 0 / totalStakingWeight > stakingRewardPool:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakingRewardPool -= 0 / totalStakingWeight
                    else:
                        require block.number - startBlock[address(arg1)]
                        if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) / block.number - startBlock[address(arg1)] != stor2[address(arg1)]:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stakingRewardPool:
                            if totalStakingWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakingWeight
                            if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) > totalStakingWeight:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStakingWeight = totalStakingWeight - (block.number * stor2[address(arg1)]) + (startBlock[address(arg1)] * stor2[address(arg1)])
                            startBlock[address(arg1)] = block.number
                            if 0 / totalStakingWeight:
                                if stor2[address(arg1)] + (0 / totalStakingWeight) < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += 0 / totalStakingWeight
                                if totalStakingAmount + (0 / totalStakingWeight) < totalStakingAmount:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakingAmount += 0 / totalStakingWeight
                                if 0 / totalStakingWeight > stakingRewardPool:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stakingRewardPool -= 0 / totalStakingWeight
                        else:
                            require stakingRewardPool
                            if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / stakingRewardPool != (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]):
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalStakingWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakingWeight
                            if (block.number * stor2[address(arg1)]) - (startBlock[address(arg1)] * stor2[address(arg1)]) > totalStakingWeight:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStakingWeight = totalStakingWeight - (block.number * stor2[address(arg1)]) + (startBlock[address(arg1)] * stor2[address(arg1)])
                            startBlock[address(arg1)] = block.number
                            if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight:
                                if stor2[address(arg1)] + ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight) < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
                                if totalStakingAmount + ((block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight) < totalStakingAmount:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakingAmount += (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
                                if (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight > stakingRewardPool:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stakingRewardPool -= (block.number * stor2[address(arg1)] * stakingRewardPool) - (startBlock[address(arg1)] * stor2[address(arg1)] * stakingRewardPool) / totalStakingWeight
            if stor2[address(arg1)] > totalStakingAmount:
                revert with 0, 'SafeMath: subtraction overflow'
            totalStakingAmount -= stor2[address(arg1)]
        stor12[address(arg1)] = uint8(arg2)
        emit ExcludeReward(arg2, arg1);
    return 1
}



}
