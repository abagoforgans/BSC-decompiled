contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit()
#
const sub_5767d534(?) = 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d

const mineral = 0x7f70642d88cf1c4a3a7abb072b53b929b653eda5


address missionAddress;
uint256 _totalSupply;
mapping of uint256 _balances;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 duration;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function duration() payable {
    return duration
}

function mission() payable {
    return missionAddress
}

function totalSupply() payable {
    return _totalSupply
}

function _totalSupply() payable {
    return _totalSupply
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function newMission(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x32ce36f6ea8d97f9fc19aab83b9c6d2f52d74470)
    staticcall 0x32ce36f6ea8d97f9fc19aab83b9c6d2f52d74470.feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only commander'
    missionAddress = arg1
}

function withdrawAll() payable {
    require ext_code.size(missionAddress)
    staticcall missionAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(missionAddress)
    call missionAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function newDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x32ce36f6ea8d97f9fc19aab83b9c6d2f52d74470)
    staticcall 0x32ce36f6ea8d97f9fc19aab83b9c6d2f52d74470.feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only commander'
    if block.timestamp < periodFinish:
        revert with 0, 'period not finish'
    duration = arg1
}

function depositAll() payable {
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(missionAddress)
    call missionAddress.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rewardPerToken() payable {
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / _totalSupply))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / _totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / _totalSupply))
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / _totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not _totalSupply:
        revert with 0, 'SafeMath: division by zero'
    require _totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply))
}

function receiveApproval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            rewardPerTokenStored += 0 / _totalSupply
        else:
            require block.timestamp - lastUpdateTime
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    else:
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not periodFinish - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            rewardPerTokenStored += 0 / _totalSupply
        else:
            require periodFinish - lastUpdateTime
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if not arg1:
        revert with 0, 'Cannot approve 0'
    if block.timestamp >= periodFinish:
        if not duration:
            revert with 0, 'SafeMath: division by zero'
        require duration
        rewardRate = arg1 / duration
        lastUpdateTime = block.timestamp
        if block.timestamp + duration < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        periodFinish = block.timestamp + duration
        if ext_code.hash(0x7f70642d88cf1c4a3a7abb072b53b929b653eda5) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x7f70642d88cf1c4a3a7abb072b53b929b653eda5):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[544 len 4] = uint32(arg1)
        call 0x7f70642d88cf1c4a3a7abb072b53b929b653eda5 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[452]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 531 len 22]
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not duration:
                revert with 0, 'SafeMath: division by zero'
            require duration
            rewardRate = arg1 / duration
        else:
            require periodFinish - block.timestamp
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not duration:
                revert with 0, 'SafeMath: division by zero'
            require duration
            rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / duration
        lastUpdateTime = block.timestamp
        if block.timestamp + duration < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        periodFinish = block.timestamp + duration
        if ext_code.hash(0x7f70642d88cf1c4a3a7abb072b53b929b653eda5) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x7f70642d88cf1c4a3a7abb072b53b929b653eda5):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[608 len 4] = uint32(arg1)
        call 0x7f70642d88cf1c4a3a7abb072b53b929b653eda5 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[516]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 595 len 22]
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / _totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require _balances[address(arg1)]
            if (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / _totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require _balances[address(arg1)]
            if (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require _balances[address(arg1)]
        if (rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / _totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require _balances[address(arg1)]
        if (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / _totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require _balances[address(arg1)]
        if (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * _balances[address(arg1)]) + (0 / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not _totalSupply:
        revert with 0, 'SafeMath: division by zero'
    require _totalSupply
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply):
        revert with 0, 'SafeMath: subtraction overflow'
    if not _balances[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    require _balances[address(arg1)]
    if (rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * _balances[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            rewardPerTokenStored += 0 / _totalSupply
        else:
            require block.timestamp - lastUpdateTime
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    else:
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not periodFinish - lastUpdateTime:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            rewardPerTokenStored += 0 / _totalSupply
        else:
            require periodFinish - lastUpdateTime
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if not msg.sender:
        if not arg1:
            revert with 0, 'Cannot stake 0'
        if _totalSupply + arg1 < _totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        _totalSupply += arg1
        if _balances[address(msg.sender)] + arg1 < _balances[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        _balances[address(msg.sender)] += arg1
        if ext_code.hash(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = uint32(arg1)
        call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / _totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not _balances[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require _balances[address(msg.sender)]
                    if (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ((rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not _totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / _totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require _balances[address(msg.sender)]
                        if (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ((rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not _totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require _balances[address(msg.sender)]
                        if (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ((rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / _totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not _balances[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require _balances[address(msg.sender)]
                    if (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ((rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not _totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if rewardPerTokenStored + (0 / _totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / _totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require _balances[address(msg.sender)]
                        if (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + (0 / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ((rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + (0 / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not _totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require _balances[address(msg.sender)]
                        if (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ((rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)] += (rewardPerTokenStored * _balances[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
        if not arg1:
            revert with 0, 'Cannot stake 0'
        if _totalSupply + arg1 < _totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        _totalSupply += arg1
        if _balances[address(msg.sender)] + arg1 < _balances[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        _balances[address(msg.sender)] += arg1
        if ext_code.hash(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[736 len 4] = uint32(arg1)
        call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[708 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[644]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 723 len 22]
    emit Staked(arg1, msg.sender);
}



}
