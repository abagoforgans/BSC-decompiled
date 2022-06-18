contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - sub_88450f90(?)
#  - sub_97feb8e8(?)
#  - sub_e5b7dac9(?)
#  - exit()
#
uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
address nominatedOwner;
uint256 lastPauseTime;
uint8 stor4;
address stakingTokenAddress; offset 8
mapping of struct rewardData;
array of address rewardTokens;
array of struct sub_03544c62;
mapping of uint256 userRewardPerTokenPaid;
mapping of struct sub_18864a36;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 lockDuration;
mapping of uint256 sub_d1ab58f4;
array of struct userStakes;
array of struct sub_0f9e4b75;

function sub_03544c62(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_03544c62[arg1].field_0
    return sub_03544c62[arg1][arg2].field_0, sub_03544c62[arg1][arg2].field_256
}

function lockDuration() payable {
    return lockDuration
}

function sub_0f9e4b75(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0f9e4b75[arg1].field_0
    return sub_0f9e4b75[arg1][arg2].field_0, sub_0f9e4b75[arg1][arg2].field_256
}

function totalSupply() payable {
    return totalSupply
}

function sub_18864a36(?) payable {
    require calldata.size - 4 >= 32
    return sub_18864a36[stor5[address(arg1)].field_0][address(arg1)].field_0
}

function rewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardData[arg1].field_0, 
           rewardData[arg1].field_256,
           rewardData[arg1].field_512,
           rewardData[arg1].field_768,
           rewardData[arg1].field_1024,
           rewardData[arg1].field_1280
}

function nominatedOwner() payable {
    return nominatedOwner
}

function paused() payable {
    return bool(stor4)
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userRewardPerTokenPaid[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function owner() payable {
    return address(owner)
}

function lastPauseTime() payable {
    return lastPauseTime
}

function userStakes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userStakes[arg1].field_0
    return userStakes[arg1][arg2].field_0, userStakes[arg1][arg2].field_256
}

function sub_d1ab58f4(?) payable {
    require calldata.size - 4 >= 64
    return sub_d1ab58f4[arg1][arg2]
}

function rewards(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return sub_18864a36[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < rewardData[address(arg1)].field_512:
        return block.timestamp
    return rewardData[address(arg1)].field_512
}

function sub_1554872d(?) payable {
    require calldata.size - 4 >= 32
    if lockDuration > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lockDuration < rewardData[address(arg1)].field_512:
        return (block.timestamp - lockDuration)
    return rewardData[address(arg1)].field_512
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644f6e6c792074686520636f6e7472616374206f776e6572206d617920706572666f726d207468697320616374696f,
                    mem[211 len 17]
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x596f75206d757374206265206e6f6d696e61746564206265666f726520796f752063616e20616363657074206f776e657273686900,
                    mem[217 len 11]
    emit OwnerChanged(address(owner), nominatedOwner);
    address(owner) = nominatedOwner
    nominatedOwner = 0
}

function setRewardsDuration(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Zero address not allowed'
    if block.timestamp <= rewardData[address(arg1)].field_512:
        revert with 0, 'Reward period still active'
    require msg.sender == rewardData[address(arg1)].field_0
    if arg2 <= 0:
        revert with 0, 'Reward duration must be non-zero'
    rewardData[address(arg1)].field_256 = arg2
    emit RewardsDurationUpdated(arg2, arg1);
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644f6e6c792074686520636f6e7472616374206f776e6572206d617920706572666f726d207468697320616374696f,
                    mem[211 len 17]
    if arg1 != bool(stor4):
        stor4 = uint8(arg1)
        if uint8(arg1):
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(stor4));
}

function setRewardsDistributor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644f6e6c792074686520636f6e7472616374206f776e6572206d617920706572666f726d207468697320616374696f,
                    mem[211 len 17]
    if not arg1:
        revert with 0, 'Zero address not allowed'
    if not arg2:
        revert with 0, 'Zero address not allowed'
    rewardData[address(arg1)].field_0 = arg2
    emit 0x55bf2bef: arg1, arg2
}

function getRewardForDuration(address arg1) payable {
    require calldata.size - 4 >= 32
    if not rewardData[address(arg1)].field_768:
        return 0
    if rewardData[address(arg1)].field_256 * rewardData[address(arg1)].field_768 / rewardData[address(arg1)].field_768 != rewardData[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardData[address(arg1)].field_256 * rewardData[address(arg1)].field_768)
}

function sub_ce8ad02a(?) payable {
    require calldata.size - 4 >= 64
    if sub_03544c62[address(arg1)].field_0 <= 1:
        if sub_03544c62[address(arg1)].field_0 != 1:
            return 1
        else:
            return 0
    idx = 1
    while idx < sub_03544c62[address(arg1)].field_0:
        mem[32] = 7
        require idx < sub_03544c62[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if arg2 >= sub_03544c62[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        if 1 > idx:
            revert with 0, 'SafeMath: subtraction overflow'
        return (idx - 1)
    return (sub_03544c62[address(arg1)].field_0 - 1)
}

function sub_9ceda938(?) payable {
    require calldata.size - 4 >= 64
    if sub_0f9e4b75[address(arg1)].field_0 <= 1:
        if sub_0f9e4b75[address(arg1)].field_0 != 1:
            return 1
        else:
            return 0
    idx = 1
    while idx < sub_0f9e4b75[address(arg1)].field_0:
        mem[32] = 15
        require idx < sub_0f9e4b75[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 15)
        if arg2 >= sub_0f9e4b75[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        if 1 > idx:
            revert with 0, 'SafeMath: subtraction overflow'
        return (idx - 1)
    return (sub_0f9e4b75[address(arg1)].field_0 - 1)
}

function sub_454f06ec(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < userStakes[address(arg1)].field_0
    if userStakes[address(arg1)][arg3].field_256 <= 0:
        return 0
    require 0 < rewardTokens.length
    if block.timestamp >= rewardData[stor6].field_512:
        if arg3 < userStakes[address(arg1)].field_0:
            return userStakes[address(arg1)][arg3].field_256
    else:
        if arg3 < userStakes[address(arg1)].field_0:
            if userStakes[address(arg1)][arg3].field_0 > arg2:
                return 0
            if arg3 < userStakes[address(arg1)].field_0:
                return userStakes[address(arg1)][arg3].field_256
    revert
}

function sub_9e75ca21(?) payable {
    require calldata.size - 4 >= 128
    if arg3 > arg4:
        revert with 0, 'time 1'
    if not arg1:
        return 0
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2 * arg1 / 10^18:
        return 0
    if (arg4 * arg2 * arg1 / 10^18) - (arg3 * arg2 * arg1 / 10^18) / arg2 * arg1 / 10^18 != arg4 - arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((arg4 * arg2 * arg1 / 10^18) - (arg3 * arg2 * arg1 / 10^18))
}

function addReward(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644f6e6c792074686520636f6e7472616374206f776e6572206d617920706572666f726d207468697320616374696f,
                    mem[211 len 17]
    if rewardData[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x707265776172642064617461206f6620746f6b656e20686173206265656e2061646465,
                    mem[199 len 29]
    if not arg1:
        revert with 0, 'Zero address not allowed'
    if not arg2:
        revert with 0, 'Zero address not allowed'
    if arg3 <= 0:
        revert with 0, 'Reward duration must be non-zero'
    rewardTokens.length++
    rewardTokens[rewardTokens.length] = arg1
    rewardData[address(arg1)].field_0 = arg2
    rewardData[address(arg1)].field_256 = arg3
    emit 0x55bf2bef: arg1, arg2
    emit RewardsDurationUpdated(arg3, arg1);
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644f6e6c792074686520636f6e7472616374206f776e6572206d617920706572666f726d207468697320616374696f,
                    mem[211 len 17]
    if stakingTokenAddress == arg1:
        revert with 0, 'Cannot withdraw staking token'
    if rewardData[address(arg1)].field_1024:
        revert with 0, 'Cannot withdraw reward token'
    if not ext_code.size(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit Recovered(address(arg1), arg2);
}

function sub_3d9c055b(?) payable {
    require calldata.size - 4 >= 32
    require 0 < rewardTokens.length
    if block.timestamp < rewardData[stor6].field_512:
        idx = 0
        s = 0
        while idx < userStakes[address(arg1)].field_0:
            require idx < userStakes[address(arg1)].field_0
            if userStakes[address(arg1)][idx].field_256 <= 0:
                if s < s:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 14
                idx = idx + 1
                s = s
                continue 
            require 0 < rewardTokens.length
            require idx < userStakes[address(arg1)].field_0
            if block.timestamp < rewardData[stor6].field_512:
                if userStakes[address(arg1)][idx].field_0 > block.timestamp:
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 14
                    idx = idx + 1
                    s = s
                    continue 
            if userStakes[address(arg1)][idx].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg1
            mem[32] = 14
            idx = idx + 1
            s = userStakes[address(arg1)][idx].field_256 + s
            continue 
    else:
        idx = 0
        s = 0
        while idx < userStakes[address(arg1)].field_0:
            require idx < userStakes[address(arg1)].field_0
            if userStakes[address(arg1)][idx].field_256 <= 0:
                if s < s:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 14
                idx = idx + 1
                s = s
                continue 
            require 0 < rewardTokens.length
            require idx < userStakes[address(arg1)].field_0
            if block.timestamp < rewardData[stor6].field_512:
                if userStakes[address(arg1)][idx].field_0 > rewardData[stor6].field_512:
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 14
                    idx = idx + 1
                    s = s
                    continue 
            if userStakes[address(arg1)][idx].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg1
            mem[32] = 14
            idx = idx + 1
            s = userStakes[address(arg1)][idx].field_256 + s
            continue 
    if s > balanceOf[address(arg1)]:
        revert with 0, 'internal 0'
    return s
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalSupply:
        return rewardData[address(arg1)].field_1280
    if block.timestamp < rewardData[address(arg1)].field_512:
        if rewardData[address(arg1)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg1)].field_1024:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_1280)
        if (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / block.timestamp - rewardData[address(arg1)].field_1024 != rewardData[address(arg1)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_1280)
        if (10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) + rewardData[address(arg1)].field_1280)
    if rewardData[address(arg1)].field_1024 > rewardData[address(arg1)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg1)].field_512 - rewardData[address(arg1)].field_1024:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_1280)
    if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / rewardData[address(arg1)].field_512 - rewardData[address(arg1)].field_1024 != rewardData[address(arg1)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_1280)
    if (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) + rewardData[address(arg1)].field_1280 < rewardData[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) + rewardData[address(arg1)].field_1280)
}

function sub_00f494cf(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    mem[32] = 14
    if arg3 <= userStakes[address(arg1)].field_0:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        mem[96] = arg3 - arg2
        mem[64] = (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                require idx + arg2 < userStakes[address(arg1)].field_0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = userStakes[address(arg1)][idx + arg2].field_0
                mem[32] = 14
                require arg2 + idx < userStakes[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 14)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = userStakes[address(arg1)][arg2 + idx].field_256
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _76 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _76:
                _157 = mem[(32 * idx) + 128]
                t = 0
                while t < 64:
                    mem[2 * t] = mem[t + _157]
                    t = t + 32
                    continue 
                t = 128
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * arg3 - arg2) + 192
            mem[(32 * arg3 - arg2) + 128 len 64] = code.data[17210 len 64]
            mem[var10001] = (32 * arg3 - arg2) + 128
            s = var10001
            idx = var10002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * arg3 - arg2) + 128 len 64] = code.data[17210 len 64]
                mem[s + 32] = (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                require idx + arg2 < userStakes[address(arg1)].field_0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = userStakes[address(arg1)][idx + arg2].field_0
                mem[32] = 14
                require arg2 + idx < userStakes[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 14)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = userStakes[address(arg1)][arg2 + idx].field_256
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _169 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _169:
                _195 = mem[(32 * idx) + 128]
                t = 0
                while t < 64:
                    mem[2 * t] = mem[t + _195]
                    t = t + 32
                    continue 
                t = 128
                idx = idx + 1
                continue 
    else:
        if userStakes[address(arg1)].field_0 < arg2:
            revert with 0, 'start cannot be higher than stop'
        mem[96] = userStakes[address(arg1)].field_0 - arg2
        mem[64] = (32 * userStakes[address(arg1)].field_0 - arg2) + 128
        if not userStakes[address(arg1)].field_0 - arg2:
            idx = 0
            while idx < userStakes[address(arg1)].field_0 - arg2:
                require idx + arg2 < userStakes[address(arg1)].field_0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = userStakes[address(arg1)][idx + arg2].field_0
                mem[32] = 14
                require arg2 + idx < userStakes[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 14)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = userStakes[address(arg1)][arg2 + idx].field_256
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _80 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _80:
                _160 = mem[(32 * idx) + 128]
                t = 0
                while t < 64:
                    mem[2 * t] = mem[t + _160]
                    t = t + 32
                    continue 
                t = 128
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * userStakes[address(arg1)].field_0 - arg2) + 192
            mem[(32 * userStakes[address(arg1)].field_0 - arg2) + 128 len 64] = code.data[17210 len 64]
            mem[var11001] = (32 * userStakes[address(arg1)].field_0 - arg2) + 128
            s = var11001
            idx = var11002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * userStakes[address(arg1)].field_0 - arg2) + 128 len 64] = code.data[17210 len 64]
                mem[s + 32] = (32 * userStakes[address(arg1)].field_0 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < userStakes[address(arg1)].field_0 - arg2:
                require idx + arg2 < userStakes[address(arg1)].field_0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = userStakes[address(arg1)][idx + arg2].field_0
                mem[32] = 14
                require arg2 + idx < userStakes[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 14)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = userStakes[address(arg1)][arg2 + idx].field_256
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _174 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _174:
                _197 = mem[(32 * idx) + 128]
                t = 0
                while t < 64:
                    mem[2 * t] = mem[t + _197]
                    t = t + 32
                    continue 
                t = 128
                idx = idx + 1
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_f28e5a71(?) payable {
    require calldata.size - 4 >= 32
    stor0++
    idx = 0
    while idx < rewardTokens.length:
        if not totalSupply:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
        if totalSupply != 0:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 5
        if block.timestamp < rewardData[stor6[idx]].field_512:
            rewardData[stor6[idx]].field_1024 = block.timestamp
        else:
            rewardData[stor6[idx]].field_1024 = rewardData[stor6[idx]].field_512
        idx = idx + 1
        continue 
    require msg.sender == rewardData[address(arg1)].field_0
    require block.timestamp >= rewardData[address(arg1)].field_512
    if sub_18864a36[msg.sender][address(arg1)].field_0:
        sub_18864a36[msg.sender][address(arg1)].field_0 = 0
        if not ext_code.size(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_18864a36[msg.sender][address(arg1)].field_32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args sub_18864a36[msg.sender][address(arg1)].field_0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    if stor0 + 1 != stor0:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
}

function notifyRewardAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < rewardTokens.length:
        if not totalSupply:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
        if totalSupply != 0:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 5
        if block.timestamp < rewardData[stor6[idx]].field_512:
            rewardData[stor6[idx]].field_1024 = block.timestamp
        else:
            rewardData[stor6[idx]].field_1024 = rewardData[stor6[idx]].field_512
        idx = idx + 1
        continue 
    require msg.sender == rewardData[address(arg1)].field_0
    if not ext_code.size(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg2),
                        mem[356 len 4]
        if block.timestamp >= rewardData[address(arg1)].field_512:
            if rewardData[address(arg1)].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardData[address(arg1)].field_256
            rewardData[address(arg1)].field_768 = arg2 / rewardData[address(arg1)].field_256
        else:
            if block.timestamp > rewardData[address(arg1)].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewardData[address(arg1)].field_512 - block.timestamp:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardData[address(arg1)].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardData[address(arg1)].field_256
                rewardData[address(arg1)].field_768 = arg2 / rewardData[address(arg1)].field_256
            else:
                if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) / rewardData[address(arg1)].field_512 - block.timestamp != rewardData[address(arg1)].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[329 len 23],
                                uint32(arg2),
                                mem[356 len 4]
                if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardData[address(arg1)].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardData[address(arg1)].field_256
                rewardData[address(arg1)].field_768 = (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) + arg2 / rewardData[address(arg1)].field_256
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
        if block.timestamp >= rewardData[address(arg1)].field_512:
            if rewardData[address(arg1)].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardData[address(arg1)].field_256
            rewardData[address(arg1)].field_768 = arg2 / rewardData[address(arg1)].field_256
        else:
            if block.timestamp > rewardData[address(arg1)].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewardData[address(arg1)].field_512 - block.timestamp:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardData[address(arg1)].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardData[address(arg1)].field_256
                rewardData[address(arg1)].field_768 = arg2 / rewardData[address(arg1)].field_256
            else:
                if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) / rewardData[address(arg1)].field_512 - block.timestamp != rewardData[address(arg1)].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardData[address(arg1)].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardData[address(arg1)].field_256
                rewardData[address(arg1)].field_768 = (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (block.timestamp * rewardData[address(arg1)].field_768) + arg2 / rewardData[address(arg1)].field_256
    rewardData[address(arg1)].field_1024 = block.timestamp
    if rewardData[address(arg1)].field_256 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rewardData[address(arg1)].field_512 = rewardData[address(arg1)].field_256 + block.timestamp
    emit RewardAdded(arg2);
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if 0 == totalSupply:
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_18864a36[address(arg1)][address(arg2)].field_0
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_18864a36[address(arg1)][address(arg2)].field_0 + ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if block.timestamp < rewardData[address(arg2)].field_512:
        if rewardData[address(arg2)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg2)].field_1024:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_18864a36[address(arg1)][address(arg2)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / block.timestamp - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_18864a36[address(arg1)][address(arg2)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_18864a36[address(arg1)][address(arg2)].field_0
        if ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if rewardData[address(arg2)].field_1024 > rewardData[address(arg2)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_18864a36[address(arg1)][address(arg2)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_18864a36[address(arg1)][address(arg2)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)][address(arg2)] > ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_18864a36[address(arg1)][address(arg2)].field_0
    if ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
}

function sub_84f963f4(?) payable {
    require calldata.size - 4 >= 64
    if 0 == totalSupply:
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if block.timestamp < rewardData[address(arg2)].field_512:
        if rewardData[address(arg2)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg2)].field_1024:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / block.timestamp - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
        if ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if rewardData[address(arg2)].field_1024 > rewardData[address(arg2)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > (0 / totalSupply) + rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 < rewardData[address(arg2)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)][address(arg2)] > ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if sub_18864a36[address(arg1)][address(arg2)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 < sub_18864a36[address(arg1)][address(arg2)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0)
    if ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) + rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if sub_d1ab58f4[address(arg1)][address(arg2)] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_d1ab58f4[address(arg1)][address(arg2)] + sub_18864a36[address(arg1)][address(arg2)].field_0 + (((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) + (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    if stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x775468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e7472616374206973207061757365,
                    mem[224 len 4]
    idx = 0
    while idx < rewardTokens.length:
        if not totalSupply:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 = sub_18864a36[stor5[stor6[idx]].field_0][stor6[idx]].field_0 + (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768)
        if totalSupply != 0:
            if block.timestamp < rewardData[stor6[idx]].field_512:
                if rewardData[stor6[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
            else:
                if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                else:
                    if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += 0 / totalSupply
                    else:
                        if (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor6[idx]].field_1280 += (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 5
        if block.timestamp < rewardData[stor6[idx]].field_512:
            rewardData[stor6[idx]].field_1024 = block.timestamp
        else:
            rewardData[stor6[idx]].field_1024 = rewardData[stor6[idx]].field_512
        if msg.sender:
            if 0 == totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > rewardData[stor6[idx]].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + ((rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if block.timestamp < rewardData[stor6[idx]].field_512:
                    if rewardData[stor6[idx]].field_1024 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor6[idx]].field_1024:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > (0 / totalSupply) + rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / block.timestamp - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > (0 / totalSupply) + rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (block.timestamp * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + (((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += ((10^18 * block.timestamp * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if rewardData[stor6[idx]].field_1024 > rewardData[stor6[idx]].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > (0 / totalSupply) + rewardData[stor6[idx]].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / rewardData[stor6[idx]].field_512 - rewardData[stor6[idx]].field_1024 != rewardData[stor6[idx]].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > (0 / totalSupply) + rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / (rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 < rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] > ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply) + rewardData[stor6[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor6[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_18864a36[address(msg.sender)][stor6[idx]].field_0 + (((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_18864a36[address(msg.sender)][stor6[idx]].field_0 += ((10^18 * rewardData[stor6[idx]].field_512 * rewardData[stor6[idx]].field_768) - (10^18 * rewardData[stor6[idx]].field_1024 * rewardData[stor6[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) + (rewardData[stor6[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] * balanceOf[address(msg.sender)]) / 10^18
            mem[0] = rewardTokens[idx]
            mem[32] = sha3(address(msg.sender), 8)
            userRewardPerTokenPaid[address(msg.sender)][stor6[idx]] = rewardData[stor6[idx]].field_1280
        idx = idx + 1
        continue 
    if arg1 <= 0:
        revert with 0, 'Cannot stake 0'
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196] = arg1
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < arg1:
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            emit Staked(0, msg.sender);
        else:
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender] += arg1
            if arg1:
                mem[64] = 292
                if lockDuration + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[228] = lockDuration + block.timestamp
                mem[260] = arg1
                userStakes[msg.sender].field_0++
                userStakes[msg.sender][userStakes[msg.sender].field_0].field_0 = lockDuration + block.timestamp
                userStakes[msg.sender][userStakes[msg.sender].field_0].field_256 = arg1
                if not sub_0f9e4b75[msg.sender].field_0:
                    mem[64] = 356
                    mem[292] = block.timestamp
                    mem[324] = balanceOf[msg.sender]
                    sub_0f9e4b75[msg.sender].field_0++
                    sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                    sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                    idx = 0
                    while idx < rewardTokens.length:
                        if block.timestamp >= rewardData[stor6[idx]].field_512:
                            revert with 0, 'maturity 0'
                        require idx < rewardTokens.length
                        require idx < rewardTokens.length
                        if not totalSupply:
                            if sub_03544c62[stor6[idx]].field_0 <= 0:
                                mem[0] = rewardTokens[idx]
                                mem[32] = 7
                                _33099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_33099] = block.timestamp
                                mem[_33099 + 32] = 0
                                sub_03544c62[stor6[idx]].field_0++
                                mem[0] = sha3(rewardTokens[idx], 7)
                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                            else:
                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                require idx < rewardTokens.length
                                if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                    mem[32] = 7
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                else:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33324 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33324] = block.timestamp
                                    mem[_33324 + 32] = 0
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                        else:
                            if not rewardData[stor6[idx]].field_768:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                require idx < rewardTokens.length
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33675 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33675] = block.timestamp
                                    mem[_33675 + 32] = 0 / totalSupply
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _34068 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_34068] = block.timestamp
                                        mem[_34068 + 32] = 0 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                            else:
                                if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                require idx < rewardTokens.length
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33891 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33891] = block.timestamp
                                    mem[_33891 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _34284 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_34284] = block.timestamp
                                        mem[_34284 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                        idx = idx + 1
                        continue 
                else:
                    require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                    if block.timestamp == sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_0:
                        require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_256 = balanceOf[msg.sender]
                        idx = 0
                        while idx < rewardTokens.length:
                            if block.timestamp >= rewardData[stor6[idx]].field_512:
                                revert with 0, 'maturity 0'
                            require idx < rewardTokens.length
                            require idx < rewardTokens.length
                            if not totalSupply:
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33113 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33113] = block.timestamp
                                    mem[_33113 + 32] = 0
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33340 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33340] = block.timestamp
                                        mem[_33340 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                            else:
                                if not rewardData[stor6[idx]].field_768:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33689 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33689] = block.timestamp
                                        mem[_33689 + 32] = 0 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34084 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34084] = block.timestamp
                                            mem[_34084 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                else:
                                    if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33905 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33905] = block.timestamp
                                        mem[_33905 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34300 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34300] = block.timestamp
                                            mem[_34300 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                            idx = idx + 1
                            continue 
                    else:
                        mem[64] = 356
                        mem[292] = block.timestamp
                        mem[324] = balanceOf[msg.sender]
                        sub_0f9e4b75[msg.sender].field_0++
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                        idx = 0
                        while idx < rewardTokens.length:
                            if block.timestamp >= rewardData[stor6[idx]].field_512:
                                revert with 0, 'maturity 0'
                            require idx < rewardTokens.length
                            require idx < rewardTokens.length
                            if not totalSupply:
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33106 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33106] = block.timestamp
                                    mem[_33106 + 32] = 0
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33332 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33332] = block.timestamp
                                        mem[_33332 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                            else:
                                if not rewardData[stor6[idx]].field_768:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33682 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33682] = block.timestamp
                                        mem[_33682 + 32] = 0 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34076 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34076] = block.timestamp
                                            mem[_34076 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                else:
                                    if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33898 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33898] = block.timestamp
                                        mem[_33898 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34292 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34292] = block.timestamp
                                            mem[_34292 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                            idx = idx + 1
                            continue 
            emit Staked(arg1, msg.sender);
    else:
        mem[228] = return_data.size
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < arg1:
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Staked(0, msg.sender);
            else:
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                if arg1:
                    mem[64] = ceil32(return_data.size) + 293
                    if lockDuration + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 229] = lockDuration + block.timestamp
                    mem[ceil32(return_data.size) + 261] = arg1
                    userStakes[msg.sender].field_0++
                    userStakes[msg.sender][userStakes[msg.sender].field_0].field_0 = lockDuration + block.timestamp
                    userStakes[msg.sender][userStakes[msg.sender].field_0].field_256 = arg1
                    if not sub_0f9e4b75[msg.sender].field_0:
                        mem[64] = ceil32(return_data.size) + 357
                        mem[ceil32(return_data.size) + 293] = block.timestamp
                        mem[ceil32(return_data.size) + 325] = balanceOf[msg.sender]
                        sub_0f9e4b75[msg.sender].field_0++
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                        idx = 0
                        while idx < rewardTokens.length:
                            if block.timestamp >= rewardData[stor6[idx]].field_512:
                                revert with 0, 'maturity 0'
                            require idx < rewardTokens.length
                            require idx < rewardTokens.length
                            if not totalSupply:
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33141 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33141] = block.timestamp
                                    mem[_33141 + 32] = 0
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33372 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33372] = block.timestamp
                                        mem[_33372 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                            else:
                                if not rewardData[stor6[idx]].field_768:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33717 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33717] = block.timestamp
                                        mem[_33717 + 32] = 0 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34116 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34116] = block.timestamp
                                            mem[_34116 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                else:
                                    if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33933 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33933] = block.timestamp
                                        mem[_33933 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34332 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34332] = block.timestamp
                                            mem[_34332 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                            idx = idx + 1
                            continue 
                    else:
                        require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                        if block.timestamp == sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_0:
                            require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_256 = balanceOf[msg.sender]
                            idx = 0
                            while idx < rewardTokens.length:
                                if block.timestamp >= rewardData[stor6[idx]].field_512:
                                    revert with 0, 'maturity 0'
                                require idx < rewardTokens.length
                                require idx < rewardTokens.length
                                if not totalSupply:
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33155 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33155] = block.timestamp
                                        mem[_33155 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33388] = block.timestamp
                                            mem[_33388 + 32] = 0
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    if not rewardData[stor6[idx]].field_768:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33731 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33731] = block.timestamp
                                            mem[_33731 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34132 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34132] = block.timestamp
                                                mem[_34132 + 32] = 0 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33947 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33947] = block.timestamp
                                            mem[_33947 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34348 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34348] = block.timestamp
                                                mem[_34348 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                idx = idx + 1
                                continue 
                        else:
                            mem[64] = ceil32(return_data.size) + 357
                            mem[ceil32(return_data.size) + 293] = block.timestamp
                            mem[ceil32(return_data.size) + 325] = balanceOf[msg.sender]
                            sub_0f9e4b75[msg.sender].field_0++
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                            idx = 0
                            while idx < rewardTokens.length:
                                if block.timestamp >= rewardData[stor6[idx]].field_512:
                                    revert with 0, 'maturity 0'
                                require idx < rewardTokens.length
                                require idx < rewardTokens.length
                                if not totalSupply:
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33148 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33148] = block.timestamp
                                        mem[_33148 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33380 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33380] = block.timestamp
                                            mem[_33380 + 32] = 0
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    if not rewardData[stor6[idx]].field_768:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33724 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33724] = block.timestamp
                                            mem[_33724 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34124 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34124] = block.timestamp
                                                mem[_34124 + 32] = 0 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33940 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33940] = block.timestamp
                                            mem[_33940 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34340 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34340] = block.timestamp
                                                mem[_34340 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                idx = idx + 1
                                continue 
                emit Staked(arg1, msg.sender);
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < arg1:
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Staked(0, msg.sender);
            else:
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                if arg1:
                    mem[64] = ceil32(return_data.size) + 293
                    if lockDuration + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 229] = lockDuration + block.timestamp
                    mem[ceil32(return_data.size) + 261] = arg1
                    userStakes[msg.sender].field_0++
                    userStakes[msg.sender][userStakes[msg.sender].field_0].field_0 = lockDuration + block.timestamp
                    userStakes[msg.sender][userStakes[msg.sender].field_0].field_256 = arg1
                    if not sub_0f9e4b75[msg.sender].field_0:
                        mem[64] = ceil32(return_data.size) + 357
                        mem[ceil32(return_data.size) + 293] = block.timestamp
                        mem[ceil32(return_data.size) + 325] = balanceOf[msg.sender]
                        sub_0f9e4b75[msg.sender].field_0++
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                        sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                        idx = 0
                        while idx < rewardTokens.length:
                            if block.timestamp >= rewardData[stor6[idx]].field_512:
                                revert with 0, 'maturity 0'
                            require idx < rewardTokens.length
                            require idx < rewardTokens.length
                            if not totalSupply:
                                if sub_03544c62[stor6[idx]].field_0 <= 0:
                                    mem[0] = rewardTokens[idx]
                                    mem[32] = 7
                                    _33183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_33183] = block.timestamp
                                    mem[_33183 + 32] = 0
                                    sub_03544c62[stor6[idx]].field_0++
                                    mem[0] = sha3(rewardTokens[idx], 7)
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                    sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                    require idx < rewardTokens.length
                                    if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                        mem[32] = 7
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                    else:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33420 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33420] = block.timestamp
                                        mem[_33420 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                            else:
                                if not rewardData[stor6[idx]].field_768:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33759 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33759] = block.timestamp
                                        mem[_33759 + 32] = 0 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34164 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34164] = block.timestamp
                                            mem[_34164 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                else:
                                    if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    require idx < rewardTokens.length
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33975 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33975] = block.timestamp
                                        mem[_33975 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _34380 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_34380] = block.timestamp
                                            mem[_34380 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                            idx = idx + 1
                            continue 
                    else:
                        require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                        if block.timestamp == sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_0:
                            require sub_0f9e4b75[msg.sender].field_0 - 1 < sub_0f9e4b75[msg.sender].field_0
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0 - 1].field_256 = balanceOf[msg.sender]
                            idx = 0
                            while idx < rewardTokens.length:
                                if block.timestamp >= rewardData[stor6[idx]].field_512:
                                    revert with 0, 'maturity 0'
                                require idx < rewardTokens.length
                                require idx < rewardTokens.length
                                if not totalSupply:
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33197 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33197] = block.timestamp
                                        mem[_33197 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33436 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33436] = block.timestamp
                                            mem[_33436 + 32] = 0
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    if not rewardData[stor6[idx]].field_768:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33773 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33773] = block.timestamp
                                            mem[_33773 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34180 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34180] = block.timestamp
                                                mem[_34180 + 32] = 0 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33989 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33989] = block.timestamp
                                            mem[_33989 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34396 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34396] = block.timestamp
                                                mem[_34396 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                idx = idx + 1
                                continue 
                        else:
                            mem[64] = ceil32(return_data.size) + 357
                            mem[ceil32(return_data.size) + 293] = block.timestamp
                            mem[ceil32(return_data.size) + 325] = balanceOf[msg.sender]
                            sub_0f9e4b75[msg.sender].field_0++
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_0 = block.timestamp
                            sub_0f9e4b75[msg.sender][sub_0f9e4b75[msg.sender].field_0].field_256 = balanceOf[msg.sender]
                            idx = 0
                            while idx < rewardTokens.length:
                                if block.timestamp >= rewardData[stor6[idx]].field_512:
                                    revert with 0, 'maturity 0'
                                require idx < rewardTokens.length
                                require idx < rewardTokens.length
                                if not totalSupply:
                                    if sub_03544c62[stor6[idx]].field_0 <= 0:
                                        mem[0] = rewardTokens[idx]
                                        mem[32] = 7
                                        _33190 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_33190] = block.timestamp
                                        mem[_33190 + 32] = 0
                                        sub_03544c62[stor6[idx]].field_0++
                                        mem[0] = sha3(rewardTokens[idx], 7)
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                        sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                    else:
                                        require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                        require idx < rewardTokens.length
                                        if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                            mem[32] = 7
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0
                                        else:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33428] = block.timestamp
                                            mem[_33428 + 32] = 0
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0
                                else:
                                    if not rewardData[stor6[idx]].field_768:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33766 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33766] = block.timestamp
                                            mem[_33766 + 32] = 0 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 0 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34172 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34172] = block.timestamp
                                                mem[_34172 + 32] = 0 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 0 / totalSupply
                                    else:
                                        if 10^18 * rewardData[stor6[idx]].field_768 / rewardData[stor6[idx]].field_768 != 10^18:
                                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        require idx < rewardTokens.length
                                        if sub_03544c62[stor6[idx]].field_0 <= 0:
                                            mem[0] = rewardTokens[idx]
                                            mem[32] = 7
                                            _33982 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_33982] = block.timestamp
                                            mem[_33982 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            sub_03544c62[stor6[idx]].field_0++
                                            mem[0] = sha3(rewardTokens[idx], 7)
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                            sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                        else:
                                            require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                            require idx < rewardTokens.length
                                            if block.timestamp == sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_0:
                                                mem[32] = 7
                                                require sub_03544c62[stor6[idx]].field_0 - 1 < sub_03544c62[stor6[idx]].field_0
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0 - 1].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                            else:
                                                mem[0] = rewardTokens[idx]
                                                mem[32] = 7
                                                _34388 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_34388] = block.timestamp
                                                mem[_34388 + 32] = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                                sub_03544c62[stor6[idx]].field_0++
                                                mem[0] = sha3(rewardTokens[idx], 7)
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_0 = block.timestamp
                                                sub_03544c62[stor6[idx]][sub_03544c62[stor6[idx]].field_0].field_256 = 10^18 * rewardData[stor6[idx]].field_768 / totalSupply
                                idx = idx + 1
                                continue 
                emit Staked(arg1, msg.sender);
    if stor0 + 1 != stor0:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
}



}
