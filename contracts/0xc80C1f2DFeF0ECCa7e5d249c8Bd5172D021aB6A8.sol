contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address rewardsTokenAddress;
address stakingTokenAddress;
address sub_102d644eAddress;
address nFTContractAddress;
address stor5;
uint256 rewardRate;
uint256 sub_35709028;
uint256 secondsPerYear;
uint256 sub_214405a9;
uint256 buyPrice;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 totalMultiplier;
uint256 stor14;
uint256 totalRewardPaid;
uint8 stakingEnabled;
uint256 sub_2bc1f6bf;
uint256 sub_3fb82e1d;
uint256 sub_95512ae0;
uint256 sub_c33fac36;
uint256 sub_6c5d8f57;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 sub_6be88980;
mapping of uint256 sub_2d5af540;
mapping of uint256 sub_450d97f4;
mapping of address tokenOwner;
array of uint256 sub_274c913f;
mapping of uint256 sub_94b94317;
mapping of uint256 stor30;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function sub_102d644e(?) payable {
    return sub_102d644eAddress
}

function tokenOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(tokenOwner[arg1])
}

function stakingEnabled() payable {
    return bool(stakingEnabled)
}

function sub_214405a9(?) payable {
    return sub_214405a9
}

function secondsPerYear() payable {
    return secondsPerYear
}

function sub_274c913f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_274c913f[arg1]
    return sub_274c913f[arg1][arg2]
}

function sub_2bc1f6bf(?) payable {
    return sub_2bc1f6bf
}

function sub_2d5af540(?) payable {
    require calldata.size - 4 >= 32
    return sub_2d5af540[arg1]
}

function NFTContract() payable {
    return nFTContractAddress
}

function sub_35709028(?) payable {
    return sub_35709028
}

function sub_3fb82e1d(?) payable {
    return sub_3fb82e1d
}

function sub_448f242b(?) payable {
    return buyPrice
}

function sub_450d97f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_450d97f4[arg1]
}

function totalRewardPaid() payable {
    return totalRewardPaid
}

function sub_6be88980(?) payable {
    require calldata.size - 4 >= 32
    return sub_6be88980[arg1]
}

function sub_6c5d8f57(?) payable {
    return sub_6c5d8f57
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function buyPrice() payable {
    return buyPrice
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function sub_94b94317(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_94b94317[arg1]
}

function sub_95512ae0(?) payable {
    return sub_95512ae0
}

function sub_c33fac36(?) payable {
    return sub_c33fac36
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

function totalMultiplier() payable {
    return totalMultiplier
}

function _fallback() payable {
    revert
}

function getTotalRewardPaid() payable {
    return (totalRewardPaid / 10^18)
}

function sub_612d9261(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_94b94317[address(arg1)] / 10^18)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_259a2998(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6c5d8f57 = arg1
}

function sub_69e3fbf7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_95512ae0 = arg1
}

function sub_71d20fe7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_214405a9 = arg1
}

function sub_c0e71df9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3fb82e1d = arg1
}

function sub_c390798d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c33fac36 = arg1
}

function sub_e9d0e96a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_35709028 = arg1
}

function sub_eace4975(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2bc1f6bf = arg1
}

function sub_d405cca8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    secondsPerYear = arg1
}

function updateBuyPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyPrice = arg1
}

function updateRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardRate = arg1
}

function getRewardRate() payable {
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    return (sub_35709028 * sub_214405a9 / secondsPerYear)
}

function sub_585b6c2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_102d644eAddress = address(arg1)
}

function updateStakingEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingEnabled = uint8(arg1)
}

function updateRewardContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsTokenAddress = arg1
}

function updateNFTContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nFTContractAddress = arg1
    stakingTokenAddress = arg1
}

function getMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return sub_2bc1f6bf
    if 1 == arg1:
        return sub_3fb82e1d
    if 2 == arg1:
        return sub_95512ae0
    if arg1 != 3:
        return sub_6c5d8f57
    return sub_c33fac36
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7562ebe8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x7562ebe8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_44b7f69b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_64cadc32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor30[address(arg1)] > test266151307():
        revert with 0, 65
    if stor30[address(arg1)]:
        mem[128 len 32 * stor30[address(arg1)]] = call.data[calldata.size len 32 * stor30[address(arg1)]]
    idx = 0
    s = 0
    while idx < stor14:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 27
        if address(tokenOwner[idx + 1]) != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if s >= stor30[address(arg1)]:
            revert with 0, 50
        mem[(32 * s) + 128] = idx + 1
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=stor30[address(arg1)], data=mem[128 len 32 * stor30[address(arg1)]])
}

function rewardPerToken() payable {
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000))
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if sub_450d97f4[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(arg1)] > -1 / sub_450d97f4[address(arg1)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(arg1)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sub_450d97f4[address(arg1)]) / 1000 / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * sub_450d97f4[address(arg1)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sub_450d97f4[address(arg1)]) / 1000 / 10^18) + rewards[address(arg1)])
}

function emergencyWithdrawNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(tokenOwner[arg1]) != msg.sender:
        revert with 0, 'Not the owner'
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    rewardPerTokenStored += (10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000
    lastUpdateTime = block.timestamp
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    rewards[address(msg.sender)] += (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if not arg1:
        revert with 0, 'Cannot withdraw 0'
    if stor30[msg.sender] < 1:
        revert with 0, 17
    stor30[msg.sender]--
    if totalMultiplier < sub_2d5af540[arg1]:
        revert with 0, 17
    totalMultiplier -= sub_2d5af540[arg1]
    if sub_450d97f4[msg.sender] < sub_2d5af540[arg1]:
        revert with 0, 17
    sub_450d97f4[msg.sender] -= sub_2d5af540[arg1]
    address(tokenOwner[arg1]) = stor5
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor14 = ext_call.return_data[0]
    emit Withdrawn(arg1, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    rewardPerTokenStored += (10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000
    lastUpdateTime = block.timestamp
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    rewards[address(msg.sender)] += (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if not arg1:
        revert with 0, 'Cannot stake 0'
    if stor30[msg.sender] > -2:
        revert with 0, 17
    stor30[msg.sender]++
    uint256(tokenOwner[arg1]) = msg.sender or Mask(96, 160, uint256(tokenOwner[arg1]))
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x7562ebe8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_6be88980[arg1] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        sub_2d5af540[arg1] = sub_2bc1f6bf
        if totalMultiplier > !sub_2bc1f6bf:
            revert with 0, 17
        totalMultiplier += sub_2bc1f6bf
    else:
        if 1 == ext_call.return_data[0]:
            sub_2d5af540[arg1] = sub_3fb82e1d
            if totalMultiplier > !sub_3fb82e1d:
                revert with 0, 17
            totalMultiplier += sub_3fb82e1d
        else:
            if 2 == ext_call.return_data[0]:
                sub_2d5af540[arg1] = sub_95512ae0
                if totalMultiplier > !sub_95512ae0:
                    revert with 0, 17
                totalMultiplier += sub_95512ae0
            else:
                if ext_call.return_data[0] != 3:
                    sub_2d5af540[arg1] = sub_6c5d8f57
                    if totalMultiplier > !sub_6c5d8f57:
                        revert with 0, 17
                    totalMultiplier += sub_6c5d8f57
                else:
                    sub_2d5af540[arg1] = sub_c33fac36
                    if totalMultiplier > !sub_c33fac36:
                        revert with 0, 17
                    totalMultiplier += sub_c33fac36
    if sub_450d97f4[msg.sender] > !sub_2d5af540[arg1]:
        revert with 0, 17
    sub_450d97f4[msg.sender] += sub_2d5af540[arg1]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor14 = ext_call.return_data[0]
    emit Staked(arg1, msg.sender);
}

function sub_59293dfe(?) payable {
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    if ((rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18) + rewards[address(msg.sender)] < buyPrice:
        revert with 0, 'Not enough Tokens'
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    rewardPerTokenStored += (10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000
    lastUpdateTime = block.timestamp
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    rewards[msg.sender] = ((rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18) + rewards[address(msg.sender)]
    if ((rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18) + rewards[address(msg.sender)] < buyPrice:
        revert with 0, 17
    rewards[msg.sender] = ((rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18) + rewards[address(msg.sender)] - buyPrice
    userRewardPerTokenPaid[msg.sender] = rewardPerTokenStored
    require ext_code.size(sub_102d644eAddress)
    call sub_102d644eAddress.0x61b21d78 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(tokenOwner[arg1]) != msg.sender:
        revert with 0, 'Not the owner'
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    rewardPerTokenStored += (10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000
    lastUpdateTime = block.timestamp
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    rewards[address(msg.sender)] += (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if not arg1:
        revert with 0, 'Cannot withdraw 0'
    if stor30[msg.sender] < 1:
        revert with 0, 17
    stor30[msg.sender]--
    if totalMultiplier < sub_2d5af540[arg1]:
        revert with 0, 17
    totalMultiplier -= sub_2d5af540[arg1]
    if sub_450d97f4[msg.sender] < sub_2d5af540[arg1]:
        revert with 0, 17
    sub_450d97f4[msg.sender] -= sub_2d5af540[arg1]
    address(tokenOwner[arg1]) = stor5
    mem[100] = this.address
    mem[132] = msg.sender
    mem[164] = arg1
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.0x18160ddd with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor14 = ext_call.return_data[0]
    emit Withdrawn(arg1, msg.sender);
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    rewardPerTokenStored += (10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000
    lastUpdateTime = block.timestamp
    if sub_35709028 and sub_214405a9 > -1 / sub_35709028:
        revert with 0, 17
    if not secondsPerYear:
        revert with 0, 18
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if block.timestamp - lastUpdateTime and sub_35709028 * sub_214405a9 / secondsPerYear > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) and 10^18 > -1 / (block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) < userRewardPerTokenPaid[address(msg.sender)]:
        revert with 0, 17
    if sub_450d97f4[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / sub_450d97f4[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18 > !rewards[address(msg.sender)]:
        revert with 0, 17
    rewards[address(msg.sender)] += (rewardPerTokenStored * sub_450d97f4[address(msg.sender)]) + ((10^18 * block.timestamp * sub_35709028 * sub_214405a9 / secondsPerYear) - (10^18 * lastUpdateTime * sub_35709028 * sub_214405a9 / secondsPerYear) / 1000 * sub_450d97f4[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * sub_450d97f4[address(msg.sender)]) / 1000 / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    require 1 == bool(stakingEnabled)
    if rewards[msg.sender] and 10^18 > -1 / rewards[msg.sender]:
        revert with 0, 17
    if 10^18 * rewards[msg.sender]:
        rewards[msg.sender] = 0
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 10^18 * rewards[msg.sender]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 10^18 * rewards[msg.sender], 0
        mem[ceil32(return_data.size) + 328] = 0
        call rewardsTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 10^18 * rewards[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 10^18 * rewards[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), Mask(224, 32, msg.sender) >> 32 == bool(uint32(this.address), Mask(224, 32, msg.sender) >> 32)
                if not uint32(this.address), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if totalRewardPaid > !(10^18 * rewards[msg.sender]):
            revert with 0, 17
        totalRewardPaid += 10^18 * rewards[msg.sender]
        if sub_94b94317[msg.sender] > !(10^18 * rewards[msg.sender]):
            revert with 0, 17
        sub_94b94317[msg.sender] += 10^18 * rewards[msg.sender]
        emit RewardPaid((10^18 * rewards[msg.sender]), msg.sender);
}



}
