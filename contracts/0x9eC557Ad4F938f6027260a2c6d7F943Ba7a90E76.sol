contract main {




// =====================  Runtime code  =====================


#
#  - stakeGego(uint256 arg1)
#  - withdraw()
#  - getReward()
#  - withdrawGego(uint256 arg1)
#  - exit()
#
uint32 stor0;
address _governanceAddress;
uint256 stor0;
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
    return address(_governanceAddress)
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

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(address(_governanceAddress), arg1);
    address(_governanceAddress) = arg1
}

function seizeErc721(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == _gegoTokenAddress:
        revert with 0, 'reward'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(_governanceAddress), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor8:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        emit NFTReceived(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, Array(len=arg4.length, data=arg4[all]));
        mem[ceil32(arg4.length) + 128 len 47] = 0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), Mask(8 * -arg4.length + ceil32(arg4.length) + 15, 0, 0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573)))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function getPlayerIds(address arg1) payable {
    require calldata.size - 4 >= 32
    if not _playerGego[address(arg1)].field_0:
        mem[(32 * _playerGego[address(arg1)].field_0) + 128] = 32
        mem[(32 * _playerGego[address(arg1)].field_0) + 160] = _playerGego[address(arg1)].field_0
        mem[(32 * _playerGego[address(arg1)].field_0) + 192 len floor32(_playerGego[address(arg1)].field_0)] = mem[128 len floor32(_playerGego[address(arg1)].field_0)]
        return memory
          from (32 * _playerGego[address(arg1)].field_0) + 128
           len (96 * _playerGego[address(arg1)].field_0) + 64
    mem[128] = _playerGego[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * _playerGego[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = _playerGego[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _playerGego[address(arg1)].field_0) + 192 len floor32(_playerGego[address(arg1)].field_0)] = mem[128 len floor32(_playerGego[address(arg1)].field_0)]
    return Array(len=_playerGego[address(arg1)].field_0, data=mem[128 len floor32(_playerGego[address(arg1)].field_0)], mem[(32 * _playerGego[address(arg1)].field_0) + floor32(_playerGego[address(arg1)].field_0) + 192 len (32 * _playerGego[address(arg1)].field_0) - floor32(_playerGego[address(arg1)].field_0)]), 
}

function seize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == _rewardTokenAddress:
        revert with 0, 'reward'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
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
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10000 * arg2) - 50 * 10^6 / 3000) + 120000 < (10000 * arg2) - 50 * 10^6 / 3000:
            revert with 0, 'SafeMath: addition overflow'
        return (((10000 * arg2) - 50 * 10^6 / 3000) + 120000)
    if arg1 == 3:
        if 8000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10000 * arg2) - 80 * 10^6 / 1000) + 130000 < (10000 * arg2) - 80 * 10^6 / 1000:
            revert with 0, 'SafeMath: addition overflow'
        return (((10000 * arg2) - 80 * 10^6 / 1000) + 130000)
    if arg1 == 4:
        if 9000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((20000 * arg2) - (50000 * 3600) / 800) + 140000 < (20000 * arg2) - (50000 * 3600) / 800:
            revert with 0, 'SafeMath: addition overflow'
        return (((20000 * arg2) - (50000 * 3600) / 800) + 140000)
    if arg1 != 5:
        if 9980 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((20000 * arg2) - 199600000 / 20) + (50 * 3600) < (20000 * arg2) - 199600000 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return (((20000 * arg2) - 199600000 / 20) + (50 * 3600))
    if 9800 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
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
    require return_data.size >= 224
    if ext_call.return_data[64] <= 0:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] == 1:
        if (10000 * ext_call.return_data[32] / 5000) + 110000 < 10000 * ext_call.return_data[32] / 5000:
            revert with 0, 'SafeMath: addition overflow'
        return (10000 * ext_call.return_data[32] / 5000) + 110000, ext_call.return_data[64]
    if ext_call.return_data[0] == 2:
        if 5000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 < (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000:
            revert with 0, 'SafeMath: addition overflow'
        return ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000, ext_call.return_data[64]
    if ext_call.return_data[0] == 3:
        if 8000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 < (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000:
            revert with 0, 'SafeMath: addition overflow'
        return ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000, ext_call.return_data[64]
    if ext_call.return_data[0] == 4:
        if 9000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 < (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800:
            revert with 0, 'SafeMath: addition overflow'
        return ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000, ext_call.return_data[64]
    if ext_call.return_data[0] != 5:
        if 9980 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) < (20000 * ext_call.return_data[32]) - 199600000 / 20:
            revert with 0, 'SafeMath: addition overflow'
        return ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600), ext_call.return_data[64]
    if 9800 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 < (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180:
        revert with 0, 'SafeMath: addition overflow'
    return ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000, ext_call.return_data[64]
}

function rewardPerToken() payable {
    if not _totalWeight:
        return _rewardPerTokenStored
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / _totalWeight))
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / _totalWeight))
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / _totalWeight))
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / _totalWeight))
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if _totalWeight <= 0:
        revert with 0, 'SafeMath: division by zero'
    require _totalWeight
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (_rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
}

function startNFTReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if _totalWeight:
        if block.timestamp < _periodFinish:
            if _lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require block.timestamp - _lastUpdateTime
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require _periodFinish - _lastUpdateTime
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
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
        revert with 0, 'SafeMath: division by zero'
    require DURATION
    _rewardRate = _initReward / DURATION
    _lastUpdateTime = _startTime
    if _startTime + DURATION < _startTime:
        revert with 0, 'SafeMath: addition overflow'
    _periodFinish = _startTime + DURATION
    emit SetStartTime(_initReward);
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if not _totalWeight:
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        require ext_code.size(_rewardTokenAddress)
        staticcall _rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.hash(_rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(_rewardTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[352 len 4] = uint32(arg1)
        call _rewardTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg1),
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
    else:
        if block.timestamp < _periodFinish:
            if _lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require block.timestamp - _lastUpdateTime
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - _lastUpdateTime:
                if _totalWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalWeight
                if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                require _periodFinish - _lastUpdateTime
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if _totalWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalWeight
                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        require ext_code.size(_rewardTokenAddress)
        staticcall _rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.hash(_rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(_rewardTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = uint32(arg1)
        call _rewardTokenAddress with:
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
    require ext_code.size(_rewardTokenAddress)
    staticcall _rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if _initReward < _initReward:
        revert with 0, 'SafeMath: addition overflow'
    emit 0x2d4e0f2e: _initReward
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not _totalWeight:
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if _totalWeight <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalWeight
            if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if _totalWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalWeight
        if _rewardPerTokenStored + (0 / _totalWeight) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + (0 / _totalWeight):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + (0 / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if _totalWeight <= 0:
        revert with 0, 'SafeMath: division by zero'
    require _totalWeight
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if _userRewardPerTokenPaid[address(arg1)] > _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if _rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return _rewards[address(arg1)]
    require balanceOf[address(arg1)]
    if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] < (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)])
}



}
