contract main {




// =====================  Runtime code  =====================


#
#  - stakeGego(uint256 arg1)
#  - withdraw()
#  - getReward()
#  - exit()
#
uint32 stor0;
address _governanceAddress;
uint256 stor0;
address sub_74f9b464Address;
address _gegoFactoryAddress;
address _gegoTokenAddress;
uint256 DURATION;
uint256 _initReward;
uint256 _startTime;
uint256 _periodFinish;
uint256 _rewardRate;
uint256 _lastUpdateTime;
uint256 _rewardPerTokenStored;
uint256 _teamRewardRate;
uint256 _poolRewardRate;
uint256 _baseRate;
uint256 _punishTime;
mapping of uint256 _userRewardPerTokenPaid;
mapping of uint256 _rewards;
mapping of uint256 _lastStakedTime;
uint8 _hasStart;
uint256 _fixRateBase;
uint256 _totalWeight;
mapping of uint256 balanceOf;
mapping of uint256 _stakeWeightes;
mapping of uint256 _stakeBalances;
uint256 _totalBalance;
mapping of uint256 sub_f3a28161;
uint256 sub_118103c6;
array of struct _playerGego;
mapping of uint256 _gegoMapIndex;

function sub_118103c6(?) payable {
    return sub_118103c6
}

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

function _totalBalance() payable {
    return _totalBalance
}

function _totalWeight() payable {
    return _totalWeight
}

function _fixRateBase() payable {
    return _fixRateBase
}

function _stakeWeightes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _stakeWeightes[arg1]
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

function sub_74f9b464(?) payable {
    return sub_74f9b464Address
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

function _gegoMapIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _gegoMapIndex[arg1]
}

function _weightBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function _stakeBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _stakeBalances[arg1]
}

function _hasStart() payable {
    return bool(_hasStart)
}

function _teamRewardRate() payable {
    return _teamRewardRate
}

function sub_f3a28161(?) payable {
    require calldata.size - 4 >= 32
    return sub_f3a28161[arg1]
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

function sub_82e0bfae(?) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    sub_118103c6 = arg1
}

function changeDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    DURATION = arg1
}

function setTeamRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _teamRewardRate = arg1
}

function setPoolRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _poolRewardRate = arg1
}

function setWithDrawPunishTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _punishTime = arg1
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
    if _gegoTokenAddress == arg1:
        revert with 0, 'gego stake'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args this.address, address(_governanceAddress), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fd548da3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'the gego not dego'
    if arg1 >= 7:
        revert with 0, 'the gego not dego'
    if 1 == arg1:
        return 10^18
    if 2 == arg1:
        return 12 * 10^17
    if 3 == arg1:
        return 16 * 10^17
    if 4 == arg1:
        return 2 * 10^18
    if arg1 != 5:
        return 3 * 10^18
    return 25 * 10^17
}

function getStakeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(_gegoFactoryAddress)
    staticcall _gegoFactoryAddress.getGego(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not ext_call.return_data[32]:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not dego'
    if 1 == ext_call.return_data[0]:
        return 10^18, ext_call.return_data[32]
    if 2 == ext_call.return_data[0]:
        return 12 * 10^17, ext_call.return_data[32]
    if 3 == ext_call.return_data[0]:
        return 16 * 10^17, ext_call.return_data[32]
    if 4 == ext_call.return_data[0]:
        return 2 * 10^18, ext_call.return_data[32]
    if ext_call.return_data[0] != 5:
        return 3 * 10^18, ext_call.return_data[32]
    return 25 * 10^17, ext_call.return_data[32]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not _hasStart:
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
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if sub_74f9b464Address == arg1:
        revert with 0, 'reward'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function rewardPerToken() payable {
    if not _totalWeight:
        return _rewardPerTokenStored
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if not _totalWeight:
                revert with 0, 'SafeMath: division by zero'
            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / _totalWeight) + _rewardPerTokenStored)
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if not _totalWeight:
                revert with 0, 'SafeMath: division by zero'
            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / _totalWeight) + _rewardPerTokenStored)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored)
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / _totalWeight) + _rewardPerTokenStored)
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / _totalWeight) + _rewardPerTokenStored)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not _totalWeight:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored)
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
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - _lastUpdateTime:
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
    if block.timestamp < _periodFinish:
        _lastUpdateTime = block.timestamp
    else:
        _lastUpdateTime = _periodFinish
    if _hasStart:
        revert with 0, 'has started'
    _hasStart = 1
    _startTime = arg1
    if not DURATION:
        revert with 0, 'SafeMath: division by zero'
    _rewardRate = _initReward / DURATION
    _lastUpdateTime = _startTime
    if DURATION + _startTime < _startTime:
        revert with 0, 'SafeMath: addition overflow'
    _periodFinish = DURATION + _startTime
    emit RewardAdded(_initReward);
}

function notifyMintAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if not _totalWeight:
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        if block.timestamp >= _periodFinish:
            if not DURATION:
                revert with 0, 'SafeMath: division by zero'
            _rewardRate = arg1 / DURATION
        else:
            if block.timestamp > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not DURATION:
                    revert with 0, 'SafeMath: division by zero'
                _rewardRate = arg1 / DURATION
            else:
                if (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) / _periodFinish - block.timestamp != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not DURATION:
                    revert with 0, 'SafeMath: division by zero'
                _rewardRate = (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) + arg1 / DURATION
    else:
        if block.timestamp < _periodFinish:
            if _lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - _lastUpdateTime:
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - _lastUpdateTime:
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        if block.timestamp >= _periodFinish:
            if not DURATION:
                revert with 0, 'SafeMath: division by zero'
            _rewardRate = arg1 / DURATION
        else:
            if block.timestamp > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not DURATION:
                    revert with 0, 'SafeMath: division by zero'
                _rewardRate = arg1 / DURATION
            else:
                if (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) / _periodFinish - block.timestamp != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not DURATION:
                    revert with 0, 'SafeMath: division by zero'
                _rewardRate = (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) + arg1 / DURATION
    _lastUpdateTime = block.timestamp
    if DURATION + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    _periodFinish = DURATION + block.timestamp
    emit RewardAdded(arg1);
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
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if _rewards[address(arg1)] + ((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewards[address(arg1)] + ((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if not _totalWeight:
                revert with 0, 'SafeMath: division by zero'
            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > (0 / _totalWeight) + _rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            if (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if _rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if not _totalWeight:
                revert with 0, 'SafeMath: division by zero'
            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if _userRewardPerTokenPaid[address(arg1)] > (0 / _totalWeight) + _rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if _rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return _rewards[address(arg1)]
            if (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if _rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if _rewards[address(arg1)] + (((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewards[address(arg1)] + (((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > (0 / _totalWeight) + _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        if (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if _rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if not _totalWeight:
            revert with 0, 'SafeMath: division by zero'
        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if _userRewardPerTokenPaid[address(arg1)] > (0 / _totalWeight) + _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if _rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return _rewards[address(arg1)]
        if (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if _rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewards[address(arg1)] + ((0 / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not _totalWeight:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if _userRewardPerTokenPaid[address(arg1)] > ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if _rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return _rewards[address(arg1)]
    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if _rewards[address(arg1)] + (((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (_rewards[address(arg1)] + (((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) + (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function withdrawGego(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _totalWeight:
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        if not msg.sender:
            if block.timestamp <= _startTime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'the gegoId error'
            mem[96] = _playerGego[msg.sender].field_0
            if _playerGego[msg.sender].field_0:
                mem[128] = _playerGego[msg.sender].field_0
                idx = 128
                s = 0
                while (32 * _playerGego[msg.sender].field_0) + 96 > idx:
                    mem[idx + 32] = _playerGego[msg.sender][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
            if mem[(32 * _gegoMapIndex[arg1]) + 128] != arg1:
                revert with 0, 'not gegoId owner'
            require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
            require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
            _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 128]
            require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
            _playerGego[msg.sender].field_0--
            if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                idx = _playerGego[msg.sender].field_0 - 1
                while _playerGego[msg.sender].field_0 > idx:
                    _playerGego[msg.sender][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 128]] = _gegoMapIndex[arg1]
        else:
            if not _totalWeight:
                if _userRewardPerTokenPaid[address(msg.sender)] > _rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if _rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if _rewards[address(msg.sender)] + ((_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                if block.timestamp <= _startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'the gegoId error'
                mem[224] = _playerGego[msg.sender].field_0
                if _playerGego[msg.sender].field_0:
                    mem[256] = _playerGego[msg.sender].field_0
                    idx = 256
                    s = 0
                    while (32 * _playerGego[msg.sender].field_0) + 224 > idx:
                        mem[idx + 32] = _playerGego[msg.sender][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
                if mem[(32 * _gegoMapIndex[arg1]) + 256] != arg1:
                    revert with 0, 'not gegoId owner'
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
                _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 256]
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                _playerGego[msg.sender].field_0--
                if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                    idx = _playerGego[msg.sender].field_0 - 1
                    while _playerGego[msg.sender].field_0 > idx:
                        _playerGego[msg.sender][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 256]] = _gegoMapIndex[arg1]
            else:
                if block.timestamp < _periodFinish:
                    if _lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - _lastUpdateTime:
                        if not _totalWeight:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if _rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if _rewards[address(msg.sender)] + (((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if _lastUpdateTime > _periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _periodFinish - _lastUpdateTime:
                        if not _totalWeight:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if _rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if _rewards[address(msg.sender)] + (((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                if block.timestamp <= _startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'the gegoId error'
                mem[352] = _playerGego[msg.sender].field_0
                if _playerGego[msg.sender].field_0:
                    mem[384] = _playerGego[msg.sender].field_0
                    idx = 384
                    s = 0
                    while (32 * _playerGego[msg.sender].field_0) + 352 > idx:
                        mem[idx + 32] = _playerGego[msg.sender][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
                if mem[(32 * _gegoMapIndex[arg1]) + 384] != arg1:
                    revert with 0, 'not gegoId owner'
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
                _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 384]
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                _playerGego[msg.sender].field_0--
                if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                    idx = _playerGego[msg.sender].field_0 - 1
                    while _playerGego[msg.sender].field_0 > idx:
                        _playerGego[msg.sender][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 384]] = _gegoMapIndex[arg1]
    else:
        if block.timestamp < _periodFinish:
            if _lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - _lastUpdateTime:
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _lastUpdateTime > _periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _periodFinish - _lastUpdateTime:
                if not _totalWeight:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                _rewardPerTokenStored += 0 / _totalWeight
            else:
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += 0 / _totalWeight
                else:
                    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not _totalWeight:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        if block.timestamp < _periodFinish:
            _lastUpdateTime = block.timestamp
        else:
            _lastUpdateTime = _periodFinish
        if not msg.sender:
            if block.timestamp <= _startTime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'the gegoId error'
            mem[224] = _playerGego[msg.sender].field_0
            if _playerGego[msg.sender].field_0:
                mem[256] = _playerGego[msg.sender].field_0
                idx = 256
                s = 0
                while (32 * _playerGego[msg.sender].field_0) + 224 > idx:
                    mem[idx + 32] = _playerGego[msg.sender][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
            if mem[(32 * _gegoMapIndex[arg1]) + 256] != arg1:
                revert with 0, 'not gegoId owner'
            require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
            require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
            _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 256]
            require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
            _playerGego[msg.sender].field_0--
            if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                idx = _playerGego[msg.sender].field_0 - 1
                while _playerGego[msg.sender].field_0 > idx:
                    _playerGego[msg.sender][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 256]] = _gegoMapIndex[arg1]
        else:
            if not _totalWeight:
                if _userRewardPerTokenPaid[address(msg.sender)] > _rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if _rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if _rewards[address(msg.sender)] + ((_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                if block.timestamp <= _startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'the gegoId error'
                mem[352] = _playerGego[msg.sender].field_0
                if _playerGego[msg.sender].field_0:
                    mem[384] = _playerGego[msg.sender].field_0
                    idx = 384
                    s = 0
                    while (32 * _playerGego[msg.sender].field_0) + 352 > idx:
                        mem[idx + 32] = _playerGego[msg.sender][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
                if mem[(32 * _gegoMapIndex[arg1]) + 384] != arg1:
                    revert with 0, 'not gegoId owner'
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
                _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 384]
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                _playerGego[msg.sender].field_0--
                if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                    idx = _playerGego[msg.sender].field_0 - 1
                    while _playerGego[msg.sender].field_0 > idx:
                        _playerGego[msg.sender][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 384]] = _gegoMapIndex[arg1]
            else:
                if block.timestamp < _periodFinish:
                    if _lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - _lastUpdateTime:
                        if not _totalWeight:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if _rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if _rewards[address(msg.sender)] + (((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if _lastUpdateTime > _periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _periodFinish - _lastUpdateTime:
                        if not _totalWeight:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if _rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if _rewards[address(msg.sender)] + ((0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += (0 / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not _totalWeight:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored < _rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if _rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) + _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if _rewards[address(msg.sender)] + (((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                _rewards[address(msg.sender)] += ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) + (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                if block.timestamp <= _startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'the gegoId error'
                mem[480] = _playerGego[msg.sender].field_0
                if _playerGego[msg.sender].field_0:
                    mem[512] = _playerGego[msg.sender].field_0
                    idx = 512
                    s = 0
                    while (32 * _playerGego[msg.sender].field_0) + 480 > idx:
                        mem[idx + 32] = _playerGego[msg.sender][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                require _gegoMapIndex[arg1] < _playerGego[msg.sender].field_0
                if mem[(32 * _gegoMapIndex[arg1]) + 512] != arg1:
                    revert with 0, 'not gegoId owner'
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                require _gegoMapIndex[arg1] < _playerGego[address(msg.sender)].field_0
                _playerGego[address(msg.sender)][stor28[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 512]
                require _playerGego[msg.sender].field_0 - 1 < _playerGego[msg.sender].field_0
                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                _playerGego[msg.sender].field_0--
                if _playerGego[msg.sender].field_0 > _playerGego[msg.sender].field_0 - 1:
                    idx = _playerGego[msg.sender].field_0 - 1
                    while _playerGego[msg.sender].field_0 > idx:
                        _playerGego[msg.sender][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                _gegoMapIndex[mem[(32 * stor27[msg.sender].field_0 - 1) + 512]] = _gegoMapIndex[arg1]
    _gegoMapIndex[arg1] = 0
    if _stakeWeightes[arg1] > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= _stakeWeightes[arg1]
    if _stakeWeightes[arg1] > _totalWeight:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalWeight -= _stakeWeightes[arg1]
    if _stakeBalances[arg1] > sub_f3a28161[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_f3a28161[msg.sender] -= _stakeBalances[arg1]
    if _stakeBalances[arg1] > _totalBalance:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalBalance -= _stakeBalances[arg1]
    require ext_code.size(_gegoTokenAddress)
    call _gegoTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _stakeBalances[arg1] = 0
    _stakeWeightes[arg1] = 0
    emit 0xa2e0b2a3: arg1, msg.sender
}



}
