contract main {




// =====================  Runtime code  =====================


const COMMUNITY_FUND_POOL_ALLOCATION = 3750 * 10^18

const VESTING_DURATION = (8760 * 24 * 3600)

const DEV_FUND_POOL_ALLOCATION = 3750 * 10^18

const FARMING_POOL_REWARD_ALLOCATION = 42500 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address operatorAddress;
uint256 startTime;
uint256 endTime;
uint256 communityFundRewardRate;
uint256 devFundRewardRate;
address communityFundAddress;
address devFundAddress;
uint256 communityFundLastClaimed;
uint256 devFundLastClaimed;
uint8 rewardPoolDistributed;

function communityFund() payable {
    return communityFundAddress
}

function devFundLastClaimed() payable {
    return devFundLastClaimed
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function devFundRewardRate() payable {
    return devFundRewardRate
}

function decimals() payable {
    return decimals
}

function endTime() payable {
    return endTime
}

function devFund() payable {
    return devFundAddress
}

function communityFundRewardRate() payable {
    return communityFundRewardRate
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function rewardPoolDistributed() payable {
    return bool(rewardPoolDistributed)
}

function communityFundLastClaimed() payable {
    return communityFundLastClaimed
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTreasuryFund(address arg1) payable {
    require calldata.size - 4 >= 32
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    communityFundAddress = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    if not arg1:
        revert with 0, 'zero'
    devFundAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x656f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function distributeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if rewardPoolDistributed:
        revert with 0, 'only can distribute once'
    if not arg1:
        revert with 0, '!_farmingIncentiveFund'
    rewardPoolDistributed = 1
    if totalSupply + 42500 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 42500 * 10^18
    if balanceOf[address(arg1)] + 42500 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 42500 * 10^18
    emit Transfer(42500 * 10^18, 0, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function unclaimedDevFund() payable {
    if block.timestamp <= endTime:
        if devFundLastClaimed >= block.timestamp:
            return 0
        if devFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - devFundLastClaimed:
            return 0
        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
    if devFundLastClaimed >= endTime:
        return 0
    if devFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - devFundLastClaimed:
        return 0
    if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
}

function unclaimedTreasuryFund() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed >= block.timestamp:
            return 0
        if communityFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - communityFundLastClaimed:
            return 0
        if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
    if communityFundLastClaimed >= endTime:
        return 0
    if communityFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - communityFundLastClaimed:
        return 0
    if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
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
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function claimRewards() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed >= block.timestamp:
            if block.timestamp <= endTime:
                if devFundLastClaimed < block.timestamp:
                    if devFundLastClaimed > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - devFundLastClaimed:
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
            else:
                if devFundLastClaimed < endTime:
                    if devFundLastClaimed > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if endTime - devFundLastClaimed:
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
        else:
            if communityFundLastClaimed > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - communityFundLastClaimed:
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if not communityFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + totalSupply
                        if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + balanceOf[stor11] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] = (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + balanceOf[stor11]
                        emit Transfer(((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
            if block.timestamp <= endTime:
                if devFundLastClaimed < block.timestamp:
                    if devFundLastClaimed > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - devFundLastClaimed:
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
            else:
                if devFundLastClaimed < endTime:
                    if devFundLastClaimed > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if endTime - devFundLastClaimed:
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
    else:
        if communityFundLastClaimed >= endTime:
            if block.timestamp <= endTime:
                if devFundLastClaimed < block.timestamp:
                    if devFundLastClaimed > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - devFundLastClaimed:
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
            else:
                if devFundLastClaimed < endTime:
                    if devFundLastClaimed > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if endTime - devFundLastClaimed:
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
        else:
            if communityFundLastClaimed > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime - communityFundLastClaimed:
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if not communityFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + totalSupply
                        if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + balanceOf[stor11] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] = (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) + balanceOf[stor11]
                        emit Transfer(((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
            if block.timestamp <= endTime:
                if devFundLastClaimed < block.timestamp:
                    if devFundLastClaimed > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - devFundLastClaimed:
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
            else:
                if devFundLastClaimed < endTime:
                    if devFundLastClaimed > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if endTime - devFundLastClaimed:
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                            if devFundAddress:
                                if not devFundAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + totalSupply
                                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) + balanceOf[stor12]
                                emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                                devFundLastClaimed = block.timestamp
}



}
