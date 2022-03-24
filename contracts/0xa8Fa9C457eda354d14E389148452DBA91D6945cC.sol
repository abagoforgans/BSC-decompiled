contract main {




// =====================  Runtime code  =====================


#
#  - stakeGego(uint256 arg1)
#  - notifyRewardAmount(uint256 arg1)
#  - withdraw()
#  - getReward()
#  - withdrawGego(uint256 arg1)
#  - exit()
#  - seize(address arg1, uint256 arg2)
#
address _governanceAddress;
address _rewardTokenAddress;
address _gegoFactoryAddress;
address _gegoTokenAddress;
address _rewardPoolAddress;
uint256 _startTime;
uint256 DURATION;
uint256 _rewardRate;
uint8 stor8;
uint256 _periodFinish;
uint256 _initReward;
uint256 sub_a75b8e6d;
uint256 sub_e46ba64d;
uint256 _lastUpdateTime;
uint256 _rewardPerTokenStored;
uint256 _poolRewardRate;
uint256 _baseRate;
uint256 _punishTime;
mapping of uint256 _userRewardPerTokenPaid;
mapping of uint256 _rewards;
mapping of uint256 _lastStakedTime;
uint256 _fixRateBase;
uint256 _totalWeight;
mapping of uint256 balanceOf;
array of struct _playerGego;
mapping of uint256 _gegoMapIndex;

function _rewardPerTokenStored() payable {
    return _rewardPerTokenStored
}

function _periodFinish() payable {
    return _periodFinish
}

function totalSupply() payable {
    return _totalWeight
}

function DURATION() payable {
    return DURATION
}

function _governance() payable {
    return _governanceAddress
}

function _totalWeight() payable {
    return _totalWeight
}

function _fixRateBase() payable {
    return _fixRateBase
}

function _poolRewardRate() payable {
    return _poolRewardRate
}

function _lastStakedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return _lastStakedTime[arg1]
}

function _playerGego(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < _playerGego[arg1].field_0
    return _playerGego[arg1][arg2].field_0
}

function _userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return _userRewardPerTokenPaid[arg1]
}

function _rewardRate() payable {
    return _rewardRate
}

function _gegoFactory() payable {
    return _gegoFactoryAddress
}

function _lastUpdateTime() payable {
    return _lastUpdateTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _gegoToken() payable {
    return _gegoTokenAddress
}

function _rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return _rewards[arg1]
}

function _baseRate() payable {
    return _baseRate
}

function _punishTime() payable {
    return _punishTime
}

function sub_a75b8e6d(?) payable {
    return sub_a75b8e6d
}

function _rewardToken() payable {
    return _rewardTokenAddress
}

function _gegoMapIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _gegoMapIndex[arg1]
}

function _weightBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function _rewardPool() payable {
    return _rewardPoolAddress
}

function _hasStart() payable {
    return bool(stor8)
}

function sub_e46ba64d(?) payable {
    return sub_e46ba64d
}

function _startTime() payable {
    return _startTime
}

function _initReward() payable {
    return _initReward
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < _periodFinish:
        return block.timestamp
    return _periodFinish
}

function sub_bed5a2b6(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_e46ba64d = arg1
}

function sub_c803cf69(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_a75b8e6d = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function seizeErc721(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == _gegoTokenAddress:
        revert with 0, 'reward'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), _governanceAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayerIds(address arg1) payable {
    require calldata.size - 4 >= 32
    if _playerGego[address(arg1)].field_0:
        mem[128] = _playerGego[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * _playerGego[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = _playerGego[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=_playerGego[address(arg1)].field_0, data=mem[128 len 32 * _playerGego[address(arg1)].field_0])
    mem[(32 * _playerGego[address(arg1)].field_0) + 128] = 32
    mem[(32 * _playerGego[address(arg1)].field_0) + 160] = _playerGego[address(arg1)].field_0
    mem[(32 * _playerGego[address(arg1)].field_0) + 192 len 32 * _playerGego[address(arg1)].field_0] = mem[128 len 32 * _playerGego[address(arg1)].field_0]
    return memory
      from (32 * _playerGego[address(arg1)].field_0) + 128
       len (96 * _playerGego[address(arg1)].field_0) + 64
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor8:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 192] = arg3
        mem[ceil32(arg4.length) + 224] = 128
        mem[ceil32(arg4.length) + 256] = arg4.length
        emit NFTReceived(address rg1, address rg2, uint256 rg3, bytes rg4):
                         Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                         mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 128],
        mem[ceil32(arg4.length) + 128] = 'onERC721Received(address,address'
        mem[ceil32(arg4.length) + 160] = ',uint256,bytes)'
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 15]))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function getFixRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'the gego not token'
    if arg1 >= 7:
        revert with 0, 'the gego not token'
    if arg1 == 1:
        if (10000 * arg2 / 5000) + 110000 < 10000 * arg2 / 5000:
            revert with 0, 'SafeMath: addition overflow'
        return ((10000 * arg2 / 5000) + 110000)
    if arg1 == 2:
        if 5000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10000 * arg2) - 50 * 10^6 / 3000) + 120000 < (10000 * arg2) - 50 * 10^6 / 3000:
            revert with 0, 'SafeMath: addition overflow'
        return (((10000 * arg2) - 50 * 10^6 / 3000) + 120000)
    if arg1 == 3:
        if 8000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10000 * arg2) - 80 * 10^6 / 1000) + 130000 < (10000 * arg2) - 80 * 10^6 / 1000:
            revert with 0, 'SafeMath: addition overflow'
        return (((10000 * arg2) - 80 * 10^6 / 1000) + 130000)
    if arg1 == 4:
        if 9000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((20000 * arg2) - (50000 * 3600) / 800) + 140000 < (20000 * arg2) - (50000 * 3600) / 800:
            revert with 0, 'SafeMath: addition overflow'
        return (((20000 * arg2) - (50000 * 3600) / 800) + 140000)
    if arg1 != 5:
        if 9980 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((20000 * arg2) - 199600000 / 20) + (50 * 3600) < (20000 * arg2) - 199600000 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return (((20000 * arg2) - 199600000 / 20) + (50 * 3600))
    if 9800 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ((20000 * arg2) - 196 * 10^6 / 180) + 160000 < (20000 * arg2) - 196 * 10^6 / 180:
        revert with 0, 'SafeMath: addition overflow'
    return (((20000 * arg2) - 196 * 10^6 / 180) + 160000)
}

function getStakeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(_gegoFactoryAddress)
    staticcall _gegoFactoryAddress.getGego(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if ext_call.return_data[64] <= 0:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] == 1:
        if (10000 * ext_call.return_data[32] / 5000) + 110000 < 10000 * ext_call.return_data[32] / 5000:
            revert with 0, 'SafeMath: addition overflow'
        return (10000 * ext_call.return_data[32] / 5000) + 110000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if ext_call.return_data[0] == 2:
        if 5000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 < (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000:
            revert with 0, 'SafeMath: addition overflow'
        return ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if ext_call.return_data[0] == 3:
        if 8000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 < (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000:
            revert with 0, 'SafeMath: addition overflow'
        return ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if ext_call.return_data[0] == 4:
        if 9000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 < (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800:
            revert with 0, 'SafeMath: addition overflow'
        return ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if ext_call.return_data[0] != 5:
        if 9980 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) < (20000 * ext_call.return_data[32]) - 199600000 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600), 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if 9800 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 < (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180:
        revert with 0, 'SafeMath: addition overflow'
    return ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000, 
           ext_call.return_data[64],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function rewardPerToken() payable {
    if not _totalWeight:
        return _rewardPerTokenStored
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - _lastUpdateTime:
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / _totalWeight))
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / _totalWeight))
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not _periodFinish - _lastUpdateTime:
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / _totalWeight))
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / _totalWeight))
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if _totalWeight <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require _totalWeight
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (_rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
}

function startNFTReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if _totalWeight:
        if block.timestamp < _periodFinish:
            if _lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require block.timestamp - _lastUpdateTime
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require _totalWeight
                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not _periodFinish - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require _periodFinish - _lastUpdateTime
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require _totalWeight
                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
    if block.timestamp < _periodFinish:
        _lastUpdateTime = block.timestamp
    else:
        _lastUpdateTime = _periodFinish
    if _initReward <= 0:
        revert with 0, 'first notifyReward'
    if stor8:
        revert with 0, 'has started'
    stor8 = 1
    _startTime = arg1
    if DURATION <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require DURATION
    _rewardRate = _initReward / DURATION
    _lastUpdateTime = _startTime
    if _startTime + DURATION < _startTime:
        revert with 0, 'SafeMath: addition overflow'
    _periodFinish = _startTime + DURATION
    emit SetStartTime(_initReward);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not _totalWeight:
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - _lastUpdateTime:
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not _periodFinish - _lastUpdateTime:
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if _totalWeight <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require _totalWeight
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not balanceOf[address(arg1)]:
        if _rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return _rewards[address(arg1)]
    require balanceOf[address(arg1)]
    if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
}



}
