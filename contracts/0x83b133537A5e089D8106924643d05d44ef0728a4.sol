contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - exit()
#
const DURATION = (24 * 3600)


address _governanceAddress;
array of uint256 stor1;
address _gegoFactoryAddress;
address _gegoTokenAddress;
address _playerBookAddress;
address _teamWalletAddress;
address _rewardPoolAddress;
uint256 _startTime;
uint256 _periodFinish;
uint256 _rewardRate;
uint256 _lastUpdateTime;
uint256 _rewardPerTokenStored;
uint256 sub_3d6308c6;
uint256 sub_e08bf1da;
uint256 totalLockedUpRewards;
uint256 _teamRewardRate;
uint256 _poolRewardRate;
uint256 _baseRate;
uint256 _punishTime;
uint256 sub_3b2cbb3a;
mapping of uint256 _userRewardPerTokenPaid;
mapping of uint256 _rewards;
mapping of uint256 _lastStakedTime;
mapping of uint256 sub_a8210e6b;
mapping of uint256 sub_696e231c;
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
uint256 storB84C;

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

function _governance() payable {
    return _governanceAddress
}

function _totalBalance() payable {
    return _totalBalance
}

function _totalWeight() payable {
    return _totalWeight
}

function _teamWallet() payable {
    return _teamWalletAddress
}

function _fixRateBase() payable {
    return _fixRateBase
}

function sub_3b2cbb3a(?) payable {
    return sub_3b2cbb3a
}

function sub_3d6308c6(?) payable {
    return sub_3d6308c6
}

function _stakeWeightes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _stakeWeightes[arg1]
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function _poolRewardRate() payable {
    return _poolRewardRate
}

function _lastStakedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _lastStakedTime[arg1]
}

function _playerGego(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < _playerGego[arg1].field_0
    return _playerGego[arg1][arg2].field_0
}

function _userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _userRewardPerTokenPaid[arg1]
}

function _rewardRate() payable {
    return _rewardRate
}

function sub_696e231c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_696e231c[arg1]
}

function _gegoFactory() payable {
    return _gegoFactoryAddress
}

function _lastUpdateTime() payable {
    return _lastUpdateTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _gegoToken() payable {
    return _gegoTokenAddress
}

function _rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _rewards[arg1]
}

function _baseRate() payable {
    return _baseRate
}

function _punishTime() payable {
    return _punishTime
}

function sub_a8210e6b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a8210e6b[arg1]
}

function _gegoMapIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _gegoMapIndex[arg1]
}

function _weightBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function _stakeBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _stakeBalances[arg1]
}

function _rewardPool() payable {
    return _rewardPoolAddress
}

function sub_e08bf1da(?) payable {
    return sub_e08bf1da
}

function sub_e44841f8(?) payable {
    return address(stor1.length)
}

function _teamRewardRate() payable {
    return _teamRewardRate
}

function sub_f3a28161(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f3a28161[arg1]
}

function _playerBook() payable {
    return _playerBookAddress
}

function _startTime() payable {
    return _startTime
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < _periodFinish:
        return block.timestamp
    return _periodFinish
}

function canHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.timestamp >= sub_a8210e6b[address(arg1)]
}

function sub_82e0bfae(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_118103c6 = arg1
}

function setHarvestInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_e08bf1da = arg1
}

function setTeamRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _teamRewardRate = arg1
}

function setPoolRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _poolRewardRate = arg1
}

function setWithDrawPunishTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _punishTime = arg1
}

function sub_c3cb90e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_3b2cbb3a:
        revert with 0, 18
    return (sub_696e231c[address(arg1)] / sub_3b2cbb3a)
}

function setTeamWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _teamWalletAddress = arg1
}

function setRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _rewardPoolAddress = arg1
}

function sub_0154993b(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if sub_3d6308c6 > 1000:
        revert with 0, 'too high limit'
    if sub_3d6308c6 < 10:
        revert with 0, 'too low limit'
    sub_3d6308c6 = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function seizeErc721(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _gegoTokenAddress == arg1:
        revert with 0, 'gego stake'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), _governanceAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function seize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(stor1.length) == arg1:
        revert with 0, 'reward'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args _governanceAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    emit NFTReceived(address arg1, address arg2, uint256 arg3, bytes arg4):
                     address(arg1),
                     address(arg2),
                     arg3,
                     128,
                     arg4.length,
                     arg4[all],
                     0,
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getPlayerIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function rewardPerToken() payable {
    if not _totalWeight:
        return _rewardPerTokenStored
    if block.timestamp < _periodFinish:
        if block.timestamp < _lastUpdateTime:
            revert with 0, 17
        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            revert with 0, 17
        if not _totalWeight:
            revert with 0, 18
        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
            revert with 0, 17
        return (_rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
    if _periodFinish < _lastUpdateTime:
        revert with 0, 17
    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
        revert with 0, 17
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        revert with 0, 17
    if not _totalWeight:
        revert with 0, 18
    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
        revert with 0, 17
    return (_rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight))
}

function getFixRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'the gego not dego'
    if arg1 >= 7:
        revert with 0, 'the gego not dego'
    if 1 == arg1:
        if arg2 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * arg2 / 5000 > -110001:
            revert with 0, 17
        return ((10000 * arg2 / 5000) + 110000)
    if 2 == arg1:
        if arg2 < 5000:
            revert with 0, 17
        if arg2 - 5000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if (10000 * arg2) - 50 * 10^6 / 3000 > -120001:
            revert with 0, 17
        return (((10000 * arg2) - 50 * 10^6 / 3000) + 120000)
    if 3 == arg1:
        if arg2 < 8000:
            revert with 0, 17
        if arg2 - 8000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if (10000 * arg2) - 80 * 10^6 / 1000 > -130001:
            revert with 0, 17
        return (((10000 * arg2) - 80 * 10^6 / 1000) + 130000)
    if 4 == arg1:
        if arg2 < 9000:
            revert with 0, 17
        if arg2 - 9000 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
            revert with 0, 17
        if (20000 * arg2) - (50000 * 3600) / 800 > -140001:
            revert with 0, 17
        return (((20000 * arg2) - (50000 * 3600) / 800) + 140000)
    if arg1 != 5:
        if arg2 < 9980:
            revert with 0, 17
        if arg2 - 9980 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
            revert with 0, 17
        if (20000 * arg2) - 199600000 / 20 > -180001:
            revert with 0, 17
        return (((20000 * arg2) - 199600000 / 20) + (50 * 3600))
    if arg2 < 9800:
        revert with 0, 17
    if arg2 - 9800 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
        revert with 0, 17
    if (20000 * arg2) - 196 * 10^6 / 180 > -160001:
        revert with 0, 17
    return (((20000 * arg2) - 196 * 10^6 / 180) + 160000)
}

function getStakeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(_gegoFactoryAddress)
    staticcall _gegoFactoryAddress.getGego(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    if ext_call.return_data[64] <= 0:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not dego'
    if 1 == ext_call.return_data[0]:
        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[32] / 5000 > -110001:
            revert with 0, 17
        return (10000 * ext_call.return_data[32] / 5000) + 110000, ext_call.return_data[64]
    if 2 == ext_call.return_data[0]:
        if ext_call.return_data[32] < 5000:
            revert with 0, 17
        if ext_call.return_data[32] - 5000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 > -120001:
            revert with 0, 17
        return ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000, ext_call.return_data[64]
    if 3 == ext_call.return_data[0]:
        if ext_call.return_data[32] < 8000:
            revert with 0, 17
        if ext_call.return_data[32] - 8000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 > -130001:
            revert with 0, 17
        return ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000, ext_call.return_data[64]
    if 4 == ext_call.return_data[0]:
        if ext_call.return_data[32] < 9000:
            revert with 0, 17
        if ext_call.return_data[32] - 9000 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
            revert with 0, 17
        if (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 > -140001:
            revert with 0, 17
        return ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000, ext_call.return_data[64]
    if ext_call.return_data[0] != 5:
        if ext_call.return_data[32] < 9980:
            revert with 0, 17
        if ext_call.return_data[32] - 9980 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
            revert with 0, 17
        if (20000 * ext_call.return_data[32]) - 199600000 / 20 > -180001:
            revert with 0, 17
        return ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600), ext_call.return_data[64]
    if ext_call.return_data[32] < 9800:
        revert with 0, 17
    if ext_call.return_data[32] - 9800 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
        revert with 0, 17
    if (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 > -160001:
        revert with 0, 17
    return ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000, ext_call.return_data[64]
}

function notifyReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if _totalWeight:
        if block.timestamp < _periodFinish:
            if block.timestamp < _lastUpdateTime:
                revert with 0, 17
            if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _periodFinish < _lastUpdateTime:
                revert with 0, 17
            if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                revert with 0, 17
            if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
    if block.timestamp < _periodFinish:
        _lastUpdateTime = block.timestamp
    else:
        _lastUpdateTime = _periodFinish
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 and sub_3b2cbb3a > -1 / 0:
        revert with 0, 17
    if block.timestamp >= _periodFinish:
        _rewardRate = (ext_call.return_data[0] * sub_3b2cbb3a) - (ext_call.return_data[0] * sub_3b2cbb3a) / 24 * 3600
    else:
        if _periodFinish < block.timestamp:
            revert with 0, 17
        if _periodFinish - block.timestamp and _rewardRate > -1 / _periodFinish - block.timestamp:
            revert with 0, 17
        if (ext_call.return_data[0] * sub_3b2cbb3a) - (ext_call.return_data[0] * sub_3b2cbb3a) > !((_periodFinish * _rewardRate) - (block.timestamp * _rewardRate)):
            revert with 0, 17
        _rewardRate = (ext_call.return_data[0] * sub_3b2cbb3a) - (ext_call.return_data[0] * sub_3b2cbb3a) + (_periodFinish * _rewardRate) - (block.timestamp * _rewardRate) / 24 * 3600
    _lastUpdateTime = block.timestamp
    if block.timestamp > -86401:
        revert with 0, 17
    _periodFinish = block.timestamp + (24 * 3600)
    emit RewardAdded(((ext_call.return_data[0] * sub_3b2cbb3a) - (ext_call.return_data[0] * sub_3b2cbb3a)));
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _totalWeight:
        if _rewardPerTokenStored < _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !_rewards[address(arg1)]:
            revert with 0, 17
        if not sub_3b2cbb3a:
            revert with 0, 18
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] / sub_3b2cbb3a)
    if block.timestamp < _periodFinish:
        if block.timestamp < _lastUpdateTime:
            revert with 0, 17
        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            revert with 0, 17
        if not _totalWeight:
            revert with 0, 18
        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
            revert with 0, 17
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !_rewards[address(arg1)]:
            revert with 0, 17
        if not sub_3b2cbb3a:
            revert with 0, 18
        return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] / sub_3b2cbb3a)
    if _periodFinish < _lastUpdateTime:
        revert with 0, 17
    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
        revert with 0, 17
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        revert with 0, 17
    if not _totalWeight:
        revert with 0, 18
    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
        revert with 0, 17
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !_rewards[address(arg1)]:
        revert with 0, 17
    if not sub_3b2cbb3a:
        revert with 0, 18
    return (((_rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(arg1)]) - (_userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + _rewards[address(arg1)] / sub_3b2cbb3a)
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _totalWeight:
        if block.timestamp < _periodFinish:
            if block.timestamp < _lastUpdateTime:
                revert with 0, 17
            if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _periodFinish < _lastUpdateTime:
                revert with 0, 17
            if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                revert with 0, 17
            if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
    if block.timestamp < _periodFinish:
        _lastUpdateTime = block.timestamp
    else:
        _lastUpdateTime = _periodFinish
    if msg.sender:
        if not _totalWeight:
            if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                revert with 0, 17
            _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < _periodFinish:
                if block.timestamp < _lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    revert with 0, 17
                if not _totalWeight:
                    revert with 0, 18
                if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                    revert with 0, 17
                if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                    revert with 0, 17
                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if _periodFinish < _lastUpdateTime:
                    revert with 0, 17
                if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                    revert with 0, 17
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    revert with 0, 17
                if not _totalWeight:
                    revert with 0, 18
                if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                    revert with 0, 17
                if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                    revert with 0, 17
                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
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
    if _gegoMapIndex[arg1] >= _playerGego[msg.sender].field_0:
        revert with 0, 50
    if mem[(32 * _gegoMapIndex[arg1]) + 128] != arg1:
        revert with 0, 'not gegoId owner'
    if _playerGego[msg.sender].field_0 < 1:
        revert with 0, 17
    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
        revert with 0, 50
    if _gegoMapIndex[arg1] >= _playerGego[address(msg.sender)].field_0:
        revert with 0, 50
    _playerGego[address(msg.sender)][stor34[arg1]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + 128]
    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
        revert with 0, 50
    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
    if not _playerGego[msg.sender].field_0:
        revert with 0, 49
    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
    _playerGego[msg.sender].field_0--
    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + 128]] = _gegoMapIndex[arg1]
    _gegoMapIndex[arg1] = 0
    if balanceOf[msg.sender] < _stakeWeightes[arg1]:
        revert with 0, 17
    balanceOf[msg.sender] -= _stakeWeightes[arg1]
    if _totalWeight < _stakeWeightes[arg1]:
        revert with 0, 17
    _totalWeight -= _stakeWeightes[arg1]
    if sub_f3a28161[msg.sender] < _stakeBalances[arg1]:
        revert with 0, 17
    sub_f3a28161[msg.sender] -= _stakeBalances[arg1]
    if _totalBalance < _stakeBalances[arg1]:
        revert with 0, 17
    _totalBalance -= _stakeBalances[arg1]
    require ext_code.size(_gegoTokenAddress)
    call _gegoTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _stakeBalances[arg1] = 0
    _stakeWeightes[arg1] = 0
    emit 0xa2e0b2a3: arg1, msg.sender
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _totalWeight:
        if block.timestamp < _periodFinish:
            if block.timestamp < _lastUpdateTime:
                revert with 0, 17
            if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
        else:
            if _periodFinish < _lastUpdateTime:
                revert with 0, 17
            if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                revert with 0, 17
            if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                revert with 0, 17
            if not _totalWeight:
                revert with 0, 18
            if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                revert with 0, 17
            _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
    if block.timestamp < _periodFinish:
        _lastUpdateTime = block.timestamp
    else:
        _lastUpdateTime = _periodFinish
    if msg.sender:
        if not _totalWeight:
            if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                revert with 0, 17
            _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < _periodFinish:
                if block.timestamp < _lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    revert with 0, 17
                if not _totalWeight:
                    revert with 0, 18
                if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                    revert with 0, 17
                if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                    revert with 0, 17
                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if _periodFinish < _lastUpdateTime:
                    revert with 0, 17
                if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                    revert with 0, 17
                if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                    revert with 0, 17
                if not _totalWeight:
                    revert with 0, 18
                if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                    revert with 0, 17
                if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                    revert with 0, 17
                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
    if block.timestamp <= _startTime:
        revert with 0, 'not start'
    _playerGego[msg.sender].field_0++
    if not _playerGego[msg.sender].field_0:
        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
        storB84C = 0
    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = arg1
    if _playerGego[msg.sender].field_0 < 1:
        revert with 0, 17
    _gegoMapIndex[arg1] = _playerGego[msg.sender].field_0 - 1
    require ext_code.size(_gegoFactoryAddress)
    staticcall _gegoFactoryAddress.getGego(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    if ext_call.return_data[64] <= 0:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not dego'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not dego'
    if 1 == ext_call.return_data[0]:
        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * ext_call.return_data[32] / 5000 > -110001:
            revert with 0, 17
        if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
            revert with 0, 17
        if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
            if ext_call.return_data[64]:
                if (10000 * ext_call.return_data[32] / 5000) + 110000 and ext_call.return_data[64] > -1 / (10000 * ext_call.return_data[32] / 5000) + 110000:
                    revert with 0, 17
                if not _fixRateBase:
                    revert with 0, 18
                if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                    revert with 0, 17
                sub_f3a28161[msg.sender] += ext_call.return_data[64]
                if balanceOf[msg.sender] > !((110000 * ext_call.return_data[64]) + (10000 * ext_call.return_data[32] / 5000 * ext_call.return_data[64]) / _fixRateBase):
                    revert with 0, 17
                balanceOf[msg.sender] += (110000 * ext_call.return_data[64]) + (10000 * ext_call.return_data[32] / 5000 * ext_call.return_data[64]) / _fixRateBase
                _stakeBalances[arg1] = ext_call.return_data[64]
                _stakeWeightes[arg1] = (110000 * ext_call.return_data[64]) + (10000 * ext_call.return_data[32] / 5000 * ext_call.return_data[64]) / _fixRateBase
                if _totalBalance > !ext_call.return_data[64]:
                    revert with 0, 17
                _totalBalance += ext_call.return_data[64]
                if _totalWeight > !((110000 * ext_call.return_data[64]) + (10000 * ext_call.return_data[32] / 5000 * ext_call.return_data[64]) / _fixRateBase):
                    revert with 0, 17
                _totalWeight += (110000 * ext_call.return_data[64]) + (10000 * ext_call.return_data[32] / 5000 * ext_call.return_data[64]) / _fixRateBase
        else:
            if sub_118103c6 < sub_f3a28161[msg.sender]:
                revert with 0, 17
            if sub_118103c6 - sub_f3a28161[msg.sender]:
                if (10000 * ext_call.return_data[32] / 5000) + 110000 and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / (10000 * ext_call.return_data[32] / 5000) + 110000:
                    revert with 0, 17
                if not _fixRateBase:
                    revert with 0, 18
                if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                    revert with 0, 17
                sub_f3a28161[msg.sender] = sub_118103c6
                if balanceOf[msg.sender] > !((110000 * sub_118103c6) - (110000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * 10000 * ext_call.return_data[32] / 5000) - (sub_f3a28161[msg.sender] * 10000 * ext_call.return_data[32] / 5000) / _fixRateBase):
                    revert with 0, 17
                balanceOf[msg.sender] += (110000 * sub_118103c6) - (110000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * 10000 * ext_call.return_data[32] / 5000) - (sub_f3a28161[msg.sender] * 10000 * ext_call.return_data[32] / 5000) / _fixRateBase
                _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                _stakeWeightes[arg1] = (110000 * sub_118103c6) - (110000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * 10000 * ext_call.return_data[32] / 5000) - (sub_f3a28161[msg.sender] * 10000 * ext_call.return_data[32] / 5000) / _fixRateBase
                if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                    revert with 0, 17
                _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                if _totalWeight > !((110000 * sub_118103c6) - (110000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * 10000 * ext_call.return_data[32] / 5000) - (sub_f3a28161[msg.sender] * 10000 * ext_call.return_data[32] / 5000) / _fixRateBase):
                    revert with 0, 17
                _totalWeight += (110000 * sub_118103c6) - (110000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * 10000 * ext_call.return_data[32] / 5000) - (sub_f3a28161[msg.sender] * 10000 * ext_call.return_data[32] / 5000) / _fixRateBase
    else:
        if 2 == ext_call.return_data[0]:
            if ext_call.return_data[32] < 5000:
                revert with 0, 17
            if ext_call.return_data[32] - 5000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 > -120001:
                revert with 0, 17
            if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                revert with 0, 17
            if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
                if ext_call.return_data[64]:
                    if ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 and ext_call.return_data[64] > -1 / ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000:
                        revert with 0, 17
                    if not _fixRateBase:
                        revert with 0, 18
                    if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                        revert with 0, 17
                    sub_f3a28161[msg.sender] += ext_call.return_data[64]
                    if balanceOf[msg.sender] > !((120000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * ext_call.return_data[64]) / _fixRateBase):
                        revert with 0, 17
                    balanceOf[msg.sender] += (120000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * ext_call.return_data[64]) / _fixRateBase
                    _stakeBalances[arg1] = ext_call.return_data[64]
                    _stakeWeightes[arg1] = (120000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * ext_call.return_data[64]) / _fixRateBase
                    if _totalBalance > !ext_call.return_data[64]:
                        revert with 0, 17
                    _totalBalance += ext_call.return_data[64]
                    if _totalWeight > !((120000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * ext_call.return_data[64]) / _fixRateBase):
                        revert with 0, 17
                    _totalWeight += (120000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * ext_call.return_data[64]) / _fixRateBase
            else:
                if sub_118103c6 < sub_f3a28161[msg.sender]:
                    revert with 0, 17
                if sub_118103c6 - sub_f3a28161[msg.sender]:
                    if ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000:
                        revert with 0, 17
                    if not _fixRateBase:
                        revert with 0, 18
                    if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                        revert with 0, 17
                    sub_f3a28161[msg.sender] = sub_118103c6
                    if balanceOf[msg.sender] > !((120000 * sub_118103c6) - (120000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) / _fixRateBase):
                        revert with 0, 17
                    balanceOf[msg.sender] += (120000 * sub_118103c6) - (120000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) / _fixRateBase
                    _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                    _stakeWeightes[arg1] = (120000 * sub_118103c6) - (120000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) / _fixRateBase
                    if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                        revert with 0, 17
                    _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                    if _totalWeight > !((120000 * sub_118103c6) - (120000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) / _fixRateBase):
                        revert with 0, 17
                    _totalWeight += (120000 * sub_118103c6) - (120000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) / _fixRateBase
        else:
            if 3 == ext_call.return_data[0]:
                if ext_call.return_data[32] < 8000:
                    revert with 0, 17
                if ext_call.return_data[32] - 8000 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 > -130001:
                    revert with 0, 17
                if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                    revert with 0, 17
                if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
                    if ext_call.return_data[64]:
                        if ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 and ext_call.return_data[64] > -1 / ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000:
                            revert with 0, 17
                        if not _fixRateBase:
                            revert with 0, 18
                        if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                            revert with 0, 17
                        sub_f3a28161[msg.sender] += ext_call.return_data[64]
                        if balanceOf[msg.sender] > !((130000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * ext_call.return_data[64]) / _fixRateBase):
                            revert with 0, 17
                        balanceOf[msg.sender] += (130000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * ext_call.return_data[64]) / _fixRateBase
                        _stakeBalances[arg1] = ext_call.return_data[64]
                        _stakeWeightes[arg1] = (130000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * ext_call.return_data[64]) / _fixRateBase
                        if _totalBalance > !ext_call.return_data[64]:
                            revert with 0, 17
                        _totalBalance += ext_call.return_data[64]
                        if _totalWeight > !((130000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * ext_call.return_data[64]) / _fixRateBase):
                            revert with 0, 17
                        _totalWeight += (130000 * ext_call.return_data[64]) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * ext_call.return_data[64]) / _fixRateBase
                else:
                    if sub_118103c6 < sub_f3a28161[msg.sender]:
                        revert with 0, 17
                    if sub_118103c6 - sub_f3a28161[msg.sender]:
                        if ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000:
                            revert with 0, 17
                        if not _fixRateBase:
                            revert with 0, 18
                        if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                            revert with 0, 17
                        sub_f3a28161[msg.sender] = sub_118103c6
                        if balanceOf[msg.sender] > !((130000 * sub_118103c6) - (130000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) / _fixRateBase):
                            revert with 0, 17
                        balanceOf[msg.sender] += (130000 * sub_118103c6) - (130000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) / _fixRateBase
                        _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                        _stakeWeightes[arg1] = (130000 * sub_118103c6) - (130000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) / _fixRateBase
                        if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                            revert with 0, 17
                        _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                        if _totalWeight > !((130000 * sub_118103c6) - (130000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) / _fixRateBase):
                            revert with 0, 17
                        _totalWeight += (130000 * sub_118103c6) - (130000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) - (sub_f3a28161[msg.sender] * (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) / _fixRateBase
            else:
                if 4 == ext_call.return_data[0]:
                    if ext_call.return_data[32] < 9000:
                        revert with 0, 17
                    if ext_call.return_data[32] - 9000 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
                        revert with 0, 17
                    if (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 > -140001:
                        revert with 0, 17
                    if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                        revert with 0, 17
                    if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
                        if ext_call.return_data[64]:
                            if ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 and ext_call.return_data[64] > -1 / ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000:
                                revert with 0, 17
                            if not _fixRateBase:
                                revert with 0, 18
                            if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                                revert with 0, 17
                            sub_f3a28161[msg.sender] += ext_call.return_data[64]
                            if balanceOf[msg.sender] > !((140000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * ext_call.return_data[64]) / _fixRateBase):
                                revert with 0, 17
                            balanceOf[msg.sender] += (140000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * ext_call.return_data[64]) / _fixRateBase
                            _stakeBalances[arg1] = ext_call.return_data[64]
                            _stakeWeightes[arg1] = (140000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * ext_call.return_data[64]) / _fixRateBase
                            if _totalBalance > !ext_call.return_data[64]:
                                revert with 0, 17
                            _totalBalance += ext_call.return_data[64]
                            if _totalWeight > !((140000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * ext_call.return_data[64]) / _fixRateBase):
                                revert with 0, 17
                            _totalWeight += (140000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * ext_call.return_data[64]) / _fixRateBase
                    else:
                        if sub_118103c6 < sub_f3a28161[msg.sender]:
                            revert with 0, 17
                        if sub_118103c6 - sub_f3a28161[msg.sender]:
                            if ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000:
                                revert with 0, 17
                            if not _fixRateBase:
                                revert with 0, 18
                            if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                revert with 0, 17
                            sub_f3a28161[msg.sender] = sub_118103c6
                            if balanceOf[msg.sender] > !((140000 * sub_118103c6) - (140000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) / _fixRateBase):
                                revert with 0, 17
                            balanceOf[msg.sender] += (140000 * sub_118103c6) - (140000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) / _fixRateBase
                            _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                            _stakeWeightes[arg1] = (140000 * sub_118103c6) - (140000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) / _fixRateBase
                            if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                revert with 0, 17
                            _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                            if _totalWeight > !((140000 * sub_118103c6) - (140000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) / _fixRateBase):
                                revert with 0, 17
                            _totalWeight += (140000 * sub_118103c6) - (140000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) / _fixRateBase
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[32] < 9980:
                            revert with 0, 17
                        if ext_call.return_data[32] - 9980 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
                            revert with 0, 17
                        if (20000 * ext_call.return_data[32]) - 199600000 / 20 > -180001:
                            revert with 0, 17
                        if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                            revert with 0, 17
                        if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
                            if ext_call.return_data[64]:
                                if ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) and ext_call.return_data[64] > -1 / ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600):
                                    revert with 0, 17
                                if not _fixRateBase:
                                    revert with 0, 18
                                if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                                    revert with 0, 17
                                sub_f3a28161[msg.sender] += ext_call.return_data[64]
                                if balanceOf[msg.sender] > !((50 * 3600 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * ext_call.return_data[64]) / _fixRateBase):
                                    revert with 0, 17
                                balanceOf[msg.sender] += (50 * 3600 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * ext_call.return_data[64]) / _fixRateBase
                                _stakeBalances[arg1] = ext_call.return_data[64]
                                _stakeWeightes[arg1] = (50 * 3600 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * ext_call.return_data[64]) / _fixRateBase
                                if _totalBalance > !ext_call.return_data[64]:
                                    revert with 0, 17
                                _totalBalance += ext_call.return_data[64]
                                if _totalWeight > !((50 * 3600 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * ext_call.return_data[64]) / _fixRateBase):
                                    revert with 0, 17
                                _totalWeight += (50 * 3600 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * ext_call.return_data[64]) / _fixRateBase
                        else:
                            if sub_118103c6 < sub_f3a28161[msg.sender]:
                                revert with 0, 17
                            if sub_118103c6 - sub_f3a28161[msg.sender]:
                                if ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600):
                                    revert with 0, 17
                                if not _fixRateBase:
                                    revert with 0, 18
                                if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                    revert with 0, 17
                                sub_f3a28161[msg.sender] = sub_118103c6
                                if balanceOf[msg.sender] > !((50 * 3600 * sub_118103c6) - (50 * 3600 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 199600000 / 20) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 199600000 / 20) / _fixRateBase):
                                    revert with 0, 17
                                balanceOf[msg.sender] += (50 * 3600 * sub_118103c6) - (50 * 3600 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 199600000 / 20) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 199600000 / 20) / _fixRateBase
                                _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                                _stakeWeightes[arg1] = (50 * 3600 * sub_118103c6) - (50 * 3600 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 199600000 / 20) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 199600000 / 20) / _fixRateBase
                                if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                    revert with 0, 17
                                _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                                if _totalWeight > !((50 * 3600 * sub_118103c6) - (50 * 3600 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 199600000 / 20) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 199600000 / 20) / _fixRateBase):
                                    revert with 0, 17
                                _totalWeight += (50 * 3600 * sub_118103c6) - (50 * 3600 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 199600000 / 20) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 199600000 / 20) / _fixRateBase
                    else:
                        if ext_call.return_data[32] < 9800:
                            revert with 0, 17
                        if ext_call.return_data[32] - 9800 > 0x346dc5d63886594af4f0d844d013a92a305532617c1bda5119ce075f6fd21:
                            revert with 0, 17
                        if (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 > -160001:
                            revert with 0, 17
                        if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                            revert with 0, 17
                        if sub_f3a28161[msg.sender] + ext_call.return_data[64] <= sub_118103c6:
                            if ext_call.return_data[64]:
                                if ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 and ext_call.return_data[64] > -1 / ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000:
                                    revert with 0, 17
                                if not _fixRateBase:
                                    revert with 0, 18
                                if sub_f3a28161[msg.sender] > !ext_call.return_data[64]:
                                    revert with 0, 17
                                sub_f3a28161[msg.sender] += ext_call.return_data[64]
                                if balanceOf[msg.sender] > !((160000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * ext_call.return_data[64]) / _fixRateBase):
                                    revert with 0, 17
                                balanceOf[msg.sender] += (160000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * ext_call.return_data[64]) / _fixRateBase
                                _stakeBalances[arg1] = ext_call.return_data[64]
                                _stakeWeightes[arg1] = (160000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * ext_call.return_data[64]) / _fixRateBase
                                if _totalBalance > !ext_call.return_data[64]:
                                    revert with 0, 17
                                _totalBalance += ext_call.return_data[64]
                                if _totalWeight > !((160000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * ext_call.return_data[64]) / _fixRateBase):
                                    revert with 0, 17
                                _totalWeight += (160000 * ext_call.return_data[64]) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * ext_call.return_data[64]) / _fixRateBase
                        else:
                            if sub_118103c6 < sub_f3a28161[msg.sender]:
                                revert with 0, 17
                            if sub_118103c6 - sub_f3a28161[msg.sender]:
                                if ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 and sub_118103c6 - sub_f3a28161[msg.sender] > -1 / ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000:
                                    revert with 0, 17
                                if not _fixRateBase:
                                    revert with 0, 18
                                if sub_f3a28161[msg.sender] > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                    revert with 0, 17
                                sub_f3a28161[msg.sender] = sub_118103c6
                                if balanceOf[msg.sender] > !((160000 * sub_118103c6) - (160000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) / _fixRateBase):
                                    revert with 0, 17
                                balanceOf[msg.sender] += (160000 * sub_118103c6) - (160000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) / _fixRateBase
                                _stakeBalances[arg1] = sub_118103c6 - sub_f3a28161[msg.sender]
                                _stakeWeightes[arg1] = (160000 * sub_118103c6) - (160000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) / _fixRateBase
                                if _totalBalance > !(sub_118103c6 - sub_f3a28161[msg.sender]):
                                    revert with 0, 17
                                _totalBalance = _totalBalance + sub_118103c6 - sub_f3a28161[msg.sender]
                                if _totalWeight > !((160000 * sub_118103c6) - (160000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) / _fixRateBase):
                                    revert with 0, 17
                                _totalWeight += (160000 * sub_118103c6) - (160000 * sub_f3a28161[msg.sender]) + (sub_118103c6 * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) - (sub_f3a28161[msg.sender] * (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) / _fixRateBase
    require ext_code.size(_gegoTokenAddress)
    call _gegoTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_a8210e6b[msg.sender]:
        if block.timestamp > !sub_e08bf1da:
            revert with 0, 17
        sub_a8210e6b[msg.sender] = block.timestamp + sub_e08bf1da
    _lastStakedTime[msg.sender] = block.timestamp
    emit 0x887aea17: arg1, msg.sender
}

function withdraw() payable {
    if block.timestamp <= _startTime:
        revert with 0, 'not start'
    mem[32] = 33
    mem[64] = (32 * _playerGego[msg.sender].field_0) + 128
    mem[96] = _playerGego[msg.sender].field_0
    if not _playerGego[msg.sender].field_0:
        idx = 1
        while uint8(idx) < _playerGego[msg.sender].field_0:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            if mem[(32 * uint8(idx)) + 128] > 0:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                _921 = mem[(32 * uint8(idx)) + 128]
                if not _totalWeight:
                    if block.timestamp < _periodFinish:
                        _lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp <= _startTime:
                                revert with 0, 'not start'
                            if mem[(32 * uint8(idx)) + 128] <= 0:
                                revert with 0, 'the gegoId error'
                            mem[0] = msg.sender
                            mem[32] = 33
                            _926 = mem[64]
                            mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                            mem[_926] = _playerGego[msg.sender].field_0
                            if _playerGego[msg.sender].field_0:
                                mem[_926 + 32] = _playerGego[msg.sender].field_0
                                s = _926 + 32
                                t = sha3(sha3(msg.sender, 33))
                                while _926 + (32 * _playerGego[msg.sender].field_0) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[32] = 34
                            if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if mem[(32 * _gegoMapIndex[_921]) + _926 + 32] != _921:
                                revert with 0, 'not gegoId owner'
                            if _playerGego[msg.sender].field_0 < 1:
                                revert with 0, 17
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                revert with 0, 50
                            _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _926 + 32]
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            if not _playerGego[msg.sender].field_0:
                                revert with 0, 49
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            _playerGego[msg.sender].field_0--
                            _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _926 + 32]] = _gegoMapIndex[_921]
                        else:
                            if not _totalWeight:
                                if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                    revert with 0, 17
                                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _992 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_992] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_992 + 32] = _playerGego[msg.sender].field_0
                                    s = _992 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _992 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _992 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _992 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _992 + 32]] = _gegoMapIndex[_921]
                            else:
                                if block.timestamp < _periodFinish:
                                    if block.timestamp < _lastUpdateTime:
                                        revert with 0, 17
                                    if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                        revert with 0, 17
                                    if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1217 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1217] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1217 + 32] = _playerGego[msg.sender].field_0
                                        s = _1217 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1217 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1217 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1217 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1217 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if _periodFinish < _lastUpdateTime:
                                        revert with 0, 17
                                    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                        revert with 0, 17
                                    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1240 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1240] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1240 + 32] = _playerGego[msg.sender].field_0
                                        s = _1240 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1240 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1240 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1240 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1240 + 32]] = _gegoMapIndex[_921]
                    else:
                        _lastUpdateTime = _periodFinish
                        if not msg.sender:
                            if block.timestamp <= _startTime:
                                revert with 0, 'not start'
                            if mem[(32 * uint8(idx)) + 128] <= 0:
                                revert with 0, 'the gegoId error'
                            mem[0] = msg.sender
                            mem[32] = 33
                            _937 = mem[64]
                            mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                            mem[_937] = _playerGego[msg.sender].field_0
                            if _playerGego[msg.sender].field_0:
                                mem[_937 + 32] = _playerGego[msg.sender].field_0
                                s = _937 + 32
                                t = sha3(sha3(msg.sender, 33))
                                while _937 + (32 * _playerGego[msg.sender].field_0) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[32] = 34
                            if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if mem[(32 * _gegoMapIndex[_921]) + _937 + 32] != _921:
                                revert with 0, 'not gegoId owner'
                            if _playerGego[msg.sender].field_0 < 1:
                                revert with 0, 17
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                revert with 0, 50
                            _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _937 + 32]
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            if not _playerGego[msg.sender].field_0:
                                revert with 0, 49
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            _playerGego[msg.sender].field_0--
                            _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _937 + 32]] = _gegoMapIndex[_921]
                        else:
                            if not _totalWeight:
                                if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                    revert with 0, 17
                                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _1001 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_1001] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_1001 + 32] = _playerGego[msg.sender].field_0
                                    s = _1001 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _1001 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _1001 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1001 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1001 + 32]] = _gegoMapIndex[_921]
                            else:
                                if block.timestamp < _periodFinish:
                                    if block.timestamp < _lastUpdateTime:
                                        revert with 0, 17
                                    if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                        revert with 0, 17
                                    if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1244 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1244] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1244 + 32] = _playerGego[msg.sender].field_0
                                        s = _1244 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1244 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1244 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1244 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1244 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if _periodFinish < _lastUpdateTime:
                                        revert with 0, 17
                                    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                        revert with 0, 17
                                    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1274 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1274] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1274 + 32] = _playerGego[msg.sender].field_0
                                        s = _1274 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1274 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1274 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1274 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1274 + 32]] = _gegoMapIndex[_921]
                else:
                    if block.timestamp < _periodFinish:
                        if block.timestamp < _lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            revert with 0, 17
                        if not _totalWeight:
                            revert with 0, 18
                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                            revert with 0, 17
                        _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
                        if block.timestamp < _periodFinish:
                            _lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _1014 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_1014] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_1014 + 32] = _playerGego[msg.sender].field_0
                                    s = _1014 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _1014 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _1014 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1014 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1014 + 32]] = _gegoMapIndex[_921]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1212 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1212] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1212 + 32] = _playerGego[msg.sender].field_0
                                        s = _1212 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1212 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1212 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1212 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1212 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1502 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1502] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1502 + 32] = _playerGego[msg.sender].field_0
                                            s = _1502 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1502 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1502 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1502 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1502 + 32]] = _gegoMapIndex[_921]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1519 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1519] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1519 + 32] = _playerGego[msg.sender].field_0
                                            s = _1519 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1519 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1519 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1519 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1519 + 32]] = _gegoMapIndex[_921]
                        else:
                            _lastUpdateTime = _periodFinish
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _1032 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_1032] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_1032 + 32] = _playerGego[msg.sender].field_0
                                    s = _1032 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _1032 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _1032 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1032 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1032 + 32]] = _gegoMapIndex[_921]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1228 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1228] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1228 + 32] = _playerGego[msg.sender].field_0
                                        s = _1228 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1228 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1228 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1228 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1228 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1523 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1523] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1523 + 32] = _playerGego[msg.sender].field_0
                                            s = _1523 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1523 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1523 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1523 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1523 + 32]] = _gegoMapIndex[_921]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1546 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1546] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1546 + 32] = _playerGego[msg.sender].field_0
                                            s = _1546 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1546 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1546 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1546 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1546 + 32]] = _gegoMapIndex[_921]
                    else:
                        if _periodFinish < _lastUpdateTime:
                            revert with 0, 17
                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                            revert with 0, 17
                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            revert with 0, 17
                        if not _totalWeight:
                            revert with 0, 18
                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                            revert with 0, 17
                        _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
                        if block.timestamp < _periodFinish:
                            _lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _1035 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_1035] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_1035 + 32] = _playerGego[msg.sender].field_0
                                    s = _1035 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _1035 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _1035 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1035 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1035 + 32]] = _gegoMapIndex[_921]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1231 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1231] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1231 + 32] = _playerGego[msg.sender].field_0
                                        s = _1231 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1231 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1231 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1231 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1231 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1527 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1527] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1527 + 32] = _playerGego[msg.sender].field_0
                                            s = _1527 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1527 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1527 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1527 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1527 + 32]] = _gegoMapIndex[_921]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1555 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1555] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1555 + 32] = _playerGego[msg.sender].field_0
                                            s = _1555 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1555 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1555 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1555 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1555 + 32]] = _gegoMapIndex[_921]
                        else:
                            _lastUpdateTime = _periodFinish
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _1056 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_1056] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_1056 + 32] = _playerGego[msg.sender].field_0
                                    s = _1056 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _1056 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_921]) + _1056 + 32] != _921:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1056 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1056 + 32]] = _gegoMapIndex[_921]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _1260 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_1260] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_1260 + 32] = _playerGego[msg.sender].field_0
                                        s = _1260 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _1260 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_921]) + _1260 + 32] != _921:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1260 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1260 + 32]] = _gegoMapIndex[_921]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1559 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1559] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1559 + 32] = _playerGego[msg.sender].field_0
                                            s = _1559 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1559 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1559 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1559 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1559 + 32]] = _gegoMapIndex[_921]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _1589 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_1589] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_1589 + 32] = _playerGego[msg.sender].field_0
                                            s = _1589 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _1589 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_921] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_921]) + _1589 + 32] != _921:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_921] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_921]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _1589 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _1589 + 32]] = _gegoMapIndex[_921]
                _gegoMapIndex[_921] = 0
                if balanceOf[msg.sender] < _stakeWeightes[_921]:
                    revert with 0, 17
                balanceOf[msg.sender] -= _stakeWeightes[_921]
                if _totalWeight < _stakeWeightes[_921]:
                    revert with 0, 17
                _totalWeight -= _stakeWeightes[_921]
                if sub_f3a28161[msg.sender] < _stakeBalances[_921]:
                    revert with 0, 17
                sub_f3a28161[msg.sender] -= _stakeBalances[_921]
                if _totalBalance < _stakeBalances[_921]:
                    revert with 0, 17
                _totalBalance -= _stakeBalances[_921]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _921
                require ext_code.size(_gegoTokenAddress)
                call _gegoTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _921
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = _921
                _stakeBalances[_921] = 0
                mem[32] = 28
                _stakeWeightes[_921] = 0
                mem[mem[64]] = _921
                emit 0xa2e0b2a3: _921, msg.sender
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
    else:
        mem[128] = _playerGego[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * _playerGego[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = _playerGego[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 1
        while uint8(idx) < _playerGego[msg.sender].field_0:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            if mem[(32 * uint8(idx)) + 128] > 0:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                _2887 = mem[(32 * uint8(idx)) + 128]
                if not _totalWeight:
                    if block.timestamp < _periodFinish:
                        _lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if block.timestamp <= _startTime:
                                revert with 0, 'not start'
                            if mem[(32 * uint8(idx)) + 128] <= 0:
                                revert with 0, 'the gegoId error'
                            mem[0] = msg.sender
                            mem[32] = 33
                            _3204 = mem[64]
                            mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                            mem[_3204] = _playerGego[msg.sender].field_0
                            if _playerGego[msg.sender].field_0:
                                mem[_3204 + 32] = _playerGego[msg.sender].field_0
                                s = _3204 + 32
                                t = sha3(sha3(msg.sender, 33))
                                while _3204 + (32 * _playerGego[msg.sender].field_0) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[32] = 34
                            if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if mem[(32 * _gegoMapIndex[_2887]) + _3204 + 32] != _2887:
                                revert with 0, 'not gegoId owner'
                            if _playerGego[msg.sender].field_0 < 1:
                                revert with 0, 17
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                revert with 0, 50
                            _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3204 + 32]
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            if not _playerGego[msg.sender].field_0:
                                revert with 0, 49
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            _playerGego[msg.sender].field_0--
                            _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3204 + 32]] = _gegoMapIndex[_2887]
                        else:
                            if not _totalWeight:
                                if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                    revert with 0, 17
                                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3486 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3486] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3486 + 32] = _playerGego[msg.sender].field_0
                                    s = _3486 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3486 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3486 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3486 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3486 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if block.timestamp < _periodFinish:
                                    if block.timestamp < _lastUpdateTime:
                                        revert with 0, 17
                                    if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                        revert with 0, 17
                                    if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3711 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3711] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3711 + 32] = _playerGego[msg.sender].field_0
                                        s = _3711 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3711 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3711 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3711 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3711 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if _periodFinish < _lastUpdateTime:
                                        revert with 0, 17
                                    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                        revert with 0, 17
                                    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3734 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3734] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3734 + 32] = _playerGego[msg.sender].field_0
                                        s = _3734 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3734 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3734 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3734 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3734 + 32]] = _gegoMapIndex[_2887]
                    else:
                        _lastUpdateTime = _periodFinish
                        if not msg.sender:
                            if block.timestamp <= _startTime:
                                revert with 0, 'not start'
                            if mem[(32 * uint8(idx)) + 128] <= 0:
                                revert with 0, 'the gegoId error'
                            mem[0] = msg.sender
                            mem[32] = 33
                            _3215 = mem[64]
                            mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                            mem[_3215] = _playerGego[msg.sender].field_0
                            if _playerGego[msg.sender].field_0:
                                mem[_3215 + 32] = _playerGego[msg.sender].field_0
                                s = _3215 + 32
                                t = sha3(sha3(msg.sender, 33))
                                while _3215 + (32 * _playerGego[msg.sender].field_0) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[32] = 34
                            if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if mem[(32 * _gegoMapIndex[_2887]) + _3215 + 32] != _2887:
                                revert with 0, 'not gegoId owner'
                            if _playerGego[msg.sender].field_0 < 1:
                                revert with 0, 17
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                revert with 0, 50
                            _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3215 + 32]
                            if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                revert with 0, 50
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            if not _playerGego[msg.sender].field_0:
                                revert with 0, 49
                            _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                            _playerGego[msg.sender].field_0--
                            _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3215 + 32]] = _gegoMapIndex[_2887]
                        else:
                            if not _totalWeight:
                                if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                    revert with 0, 17
                                _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3495 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3495] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3495 + 32] = _playerGego[msg.sender].field_0
                                    s = _3495 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3495 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3495 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3495 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3495 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if block.timestamp < _periodFinish:
                                    if block.timestamp < _lastUpdateTime:
                                        revert with 0, 17
                                    if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                        revert with 0, 17
                                    if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3738 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3738] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3738 + 32] = _playerGego[msg.sender].field_0
                                        s = _3738 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3738 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3738 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3738 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3738 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if _periodFinish < _lastUpdateTime:
                                        revert with 0, 17
                                    if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                        revert with 0, 17
                                    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                        revert with 0, 17
                                    if not _totalWeight:
                                        revert with 0, 18
                                    if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                        revert with 0, 17
                                    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3768 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3768] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3768 + 32] = _playerGego[msg.sender].field_0
                                        s = _3768 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3768 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3768 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3768 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3768 + 32]] = _gegoMapIndex[_2887]
                else:
                    if block.timestamp < _periodFinish:
                        if block.timestamp < _lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            revert with 0, 17
                        if not _totalWeight:
                            revert with 0, 18
                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                            revert with 0, 17
                        _rewardPerTokenStored += (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
                        if block.timestamp < _periodFinish:
                            _lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3508 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3508] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3508 + 32] = _playerGego[msg.sender].field_0
                                    s = _3508 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3508 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3508 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3508 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3508 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3706 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3706] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3706 + 32] = _playerGego[msg.sender].field_0
                                        s = _3706 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3706 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3706 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3706 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3706 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _3996 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_3996] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_3996 + 32] = _playerGego[msg.sender].field_0
                                            s = _3996 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _3996 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _3996 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3996 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3996 + 32]] = _gegoMapIndex[_2887]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4013 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4013] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4013 + 32] = _playerGego[msg.sender].field_0
                                            s = _4013 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4013 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4013 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4013 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4013 + 32]] = _gegoMapIndex[_2887]
                        else:
                            _lastUpdateTime = _periodFinish
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3526 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3526] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3526 + 32] = _playerGego[msg.sender].field_0
                                    s = _3526 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3526 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3526 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3526 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3526 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3722 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3722] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3722 + 32] = _playerGego[msg.sender].field_0
                                        s = _3722 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3722 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3722 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3722 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3722 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4017 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4017] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4017 + 32] = _playerGego[msg.sender].field_0
                                            s = _4017 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4017 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4017 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4017 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4017 + 32]] = _gegoMapIndex[_2887]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4040 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4040] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4040 + 32] = _playerGego[msg.sender].field_0
                                            s = _4040 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4040 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4040 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4040 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4040 + 32]] = _gegoMapIndex[_2887]
                    else:
                        if _periodFinish < _lastUpdateTime:
                            revert with 0, 17
                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                            revert with 0, 17
                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                            revert with 0, 17
                        if not _totalWeight:
                            revert with 0, 18
                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                            revert with 0, 17
                        _rewardPerTokenStored += (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight
                        if block.timestamp < _periodFinish:
                            _lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3529 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3529] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3529 + 32] = _playerGego[msg.sender].field_0
                                    s = _3529 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3529 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3529 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3529 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3529 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3725 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3725] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3725 + 32] = _playerGego[msg.sender].field_0
                                        s = _3725 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3725 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3725 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3725 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3725 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4021 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4021] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4021 + 32] = _playerGego[msg.sender].field_0
                                            s = _4021 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4021 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4021 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4021 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4021 + 32]] = _gegoMapIndex[_2887]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4049 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4049] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4049 + 32] = _playerGego[msg.sender].field_0
                                            s = _4049 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4049 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4049 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4049 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4049 + 32]] = _gegoMapIndex[_2887]
                        else:
                            _lastUpdateTime = _periodFinish
                            if not msg.sender:
                                if block.timestamp <= _startTime:
                                    revert with 0, 'not start'
                                if mem[(32 * uint8(idx)) + 128] <= 0:
                                    revert with 0, 'the gegoId error'
                                mem[0] = msg.sender
                                mem[32] = 33
                                _3550 = mem[64]
                                mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                mem[_3550] = _playerGego[msg.sender].field_0
                                if _playerGego[msg.sender].field_0:
                                    mem[_3550 + 32] = _playerGego[msg.sender].field_0
                                    s = _3550 + 32
                                    t = sha3(sha3(msg.sender, 33))
                                    while _3550 + (32 * _playerGego[msg.sender].field_0) > s:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                mem[32] = 34
                                if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if mem[(32 * _gegoMapIndex[_2887]) + _3550 + 32] != _2887:
                                    revert with 0, 'not gegoId owner'
                                if _playerGego[msg.sender].field_0 < 1:
                                    revert with 0, 17
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                    revert with 0, 50
                                _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3550 + 32]
                                if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                    revert with 0, 50
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                if not _playerGego[msg.sender].field_0:
                                    revert with 0, 49
                                _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                _playerGego[msg.sender].field_0--
                                _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3550 + 32]] = _gegoMapIndex[_2887]
                            else:
                                if not _totalWeight:
                                    if _rewardPerTokenStored < _userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] and _rewardPerTokenStored - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                        revert with 0, 17
                                    _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                    if block.timestamp <= _startTime:
                                        revert with 0, 'not start'
                                    if mem[(32 * uint8(idx)) + 128] <= 0:
                                        revert with 0, 'the gegoId error'
                                    mem[0] = msg.sender
                                    mem[32] = 33
                                    _3754 = mem[64]
                                    mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                    mem[_3754] = _playerGego[msg.sender].field_0
                                    if _playerGego[msg.sender].field_0:
                                        mem[_3754 + 32] = _playerGego[msg.sender].field_0
                                        s = _3754 + 32
                                        t = sha3(sha3(msg.sender, 33))
                                        while _3754 + (32 * _playerGego[msg.sender].field_0) > s:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                    mem[32] = 34
                                    if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if mem[(32 * _gegoMapIndex[_2887]) + _3754 + 32] != _2887:
                                        revert with 0, 'not gegoId owner'
                                    if _playerGego[msg.sender].field_0 < 1:
                                        revert with 0, 17
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                        revert with 0, 50
                                    _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _3754 + 32]
                                    if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                        revert with 0, 50
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    if not _playerGego[msg.sender].field_0:
                                        revert with 0, 49
                                    _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                    _playerGego[msg.sender].field_0--
                                    _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _3754 + 32]] = _gegoMapIndex[_2887]
                                else:
                                    if block.timestamp < _periodFinish:
                                        if block.timestamp < _lastUpdateTime:
                                            revert with 0, 17
                                        if block.timestamp - _lastUpdateTime and _rewardRate > -1 / block.timestamp - _lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4053 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4053] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4053 + 32] = _playerGego[msg.sender].field_0
                                            s = _4053 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4053 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4053 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4053 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4053 + 32]] = _gegoMapIndex[_2887]
                                    else:
                                        if _periodFinish < _lastUpdateTime:
                                            revert with 0, 17
                                        if _periodFinish - _lastUpdateTime and _rewardRate > -1 / _periodFinish - _lastUpdateTime:
                                            revert with 0, 17
                                        if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) and 10^18 > -1 / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
                                            revert with 0, 17
                                        if not _totalWeight:
                                            revert with 0, 18
                                        if _rewardPerTokenStored > !((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight):
                                            revert with 0, 17
                                        if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) < _userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] and _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight) - _userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                            revert with 0, 17
                                        if (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !_rewards[address(msg.sender)]:
                                            revert with 0, 17
                                        _rewards[address(msg.sender)] += (_rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / _totalWeight * balanceOf[address(msg.sender)]) - (_userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        _userRewardPerTokenPaid[address(msg.sender)] = _rewardPerTokenStored
                                        if block.timestamp <= _startTime:
                                            revert with 0, 'not start'
                                        if mem[(32 * uint8(idx)) + 128] <= 0:
                                            revert with 0, 'the gegoId error'
                                        mem[0] = msg.sender
                                        mem[32] = 33
                                        _4083 = mem[64]
                                        mem[64] = mem[64] + (32 * _playerGego[msg.sender].field_0) + 32
                                        mem[_4083] = _playerGego[msg.sender].field_0
                                        if _playerGego[msg.sender].field_0:
                                            mem[_4083 + 32] = _playerGego[msg.sender].field_0
                                            s = _4083 + 32
                                            t = sha3(sha3(msg.sender, 33))
                                            while _4083 + (32 * _playerGego[msg.sender].field_0) > s:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                        mem[32] = 34
                                        if _gegoMapIndex[_2887] >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if mem[(32 * _gegoMapIndex[_2887]) + _4083 + 32] != _2887:
                                            revert with 0, 'not gegoId owner'
                                        if _playerGego[msg.sender].field_0 < 1:
                                            revert with 0, 17
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        if _gegoMapIndex[_2887] >= _playerGego[address(msg.sender)].field_0:
                                            revert with 0, 50
                                        _playerGego[address(msg.sender)][stor34[_2887]].field_0 = mem[(32 * _playerGego[msg.sender].field_0 - 1) + _4083 + 32]
                                        if _playerGego[msg.sender].field_0 - 1 >= _playerGego[msg.sender].field_0:
                                            revert with 0, 50
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        if not _playerGego[msg.sender].field_0:
                                            revert with 0, 49
                                        _playerGego[msg.sender][_playerGego[msg.sender].field_0].field_0 = 0
                                        _playerGego[msg.sender].field_0--
                                        _gegoMapIndex[mem[(32 * stor33[msg.sender].field_0 - 1) + _4083 + 32]] = _gegoMapIndex[_2887]
                _gegoMapIndex[_2887] = 0
                if balanceOf[msg.sender] < _stakeWeightes[_2887]:
                    revert with 0, 17
                balanceOf[msg.sender] -= _stakeWeightes[_2887]
                if _totalWeight < _stakeWeightes[_2887]:
                    revert with 0, 17
                _totalWeight -= _stakeWeightes[_2887]
                if sub_f3a28161[msg.sender] < _stakeBalances[_2887]:
                    revert with 0, 17
                sub_f3a28161[msg.sender] -= _stakeBalances[_2887]
                if _totalBalance < _stakeBalances[_2887]:
                    revert with 0, 17
                _totalBalance -= _stakeBalances[_2887]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _2887
                require ext_code.size(_gegoTokenAddress)
                call _gegoTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _2887
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = _2887
                _stakeBalances[_2887] = 0
                mem[32] = 28
                _stakeWeightes[_2887] = 0
                mem[mem[64]] = _2887
                emit 0xa2e0b2a3: _2887, msg.sender
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
}



}
