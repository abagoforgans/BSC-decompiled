contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit(uint256 arg1)
#  - stake(uint256 arg1)
#  - sub_c23271b9(?)
#  - emergencyWithdraw()
#
const _rule = 1

const DURATION = (168 * 24 * 3600)


uint32 stor0;
address _governanceAddress;
uint256 stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
address sub_86c2ef68Address;
address sub_d73d7bbdAddress;
address sub_3157b8d5Address;
address sub_d7e31605Address;
address teamWalletAddress;
address burnPoolAddress;
address sub_67eb1456Address;
uint256 _initReward;
uint256 _startTime;
uint256 _periodFinish;
uint256 _rewardRate;
uint256 _lastUpdateTime;
uint256 _rewardPerTokenStored;
array of uint256 sub_60ee320a;
uint256 stor17;
uint256 sub_4e0c6815;
uint256 _teamRewardRate;
uint256 _baseRate;
mapping of struct userInfo;
uint256 sub_1fa12479;
uint256 sub_5e7ec827;
uint256 feeRewardRate;
uint256 feeBurnRate;
mapping of struct sub_074f7ea2;
uint8 _hasStart;
uint8 _emergencyStop; offset 8
address contractCallerAddress; offset 16
uint256 stor28; offset 8

function sub_074f7ea2(?) payable {
    require calldata.size - 4 >= 64
    return sub_074f7ea2[arg1][arg2].field_0, sub_074f7ea2[arg1][arg2].field_256, sub_074f7ea2[arg1][arg2].field_512
}

function _rewardPerTokenStored() payable {
    return _rewardPerTokenStored
}

function _periodFinish() payable {
    return _periodFinish
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024
}

function _governance() payable {
    return address(_governanceAddress)
}

function sub_1fa12479(?) payable {
    return sub_1fa12479
}

function sub_3157b8d5(?) payable {
    return sub_3157b8d5Address
}

function sub_4e0c6815(?) payable {
    return sub_4e0c6815
}

function contractCaller() payable {
    return contractCallerAddress
}

function teamWallet() payable {
    return teamWalletAddress
}

function getPower(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[address(arg1)].field_768
}

function sub_5e7ec827(?) payable {
    return sub_5e7ec827
}

function sub_60ee320a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_60ee320a[arg1]
}

function sub_67eb1456(?) payable {
    return sub_67eb1456Address
}

function _emergencyStop() payable {
    return bool(_emergencyStop)
}

function _rewardRate() payable {
    return _rewardRate
}

function _lastUpdateTime() payable {
    return _lastUpdateTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function feeRewardRate() payable {
    return feeRewardRate
}

function sub_86c2ef68(?) payable {
    return sub_86c2ef68Address
}

function _baseRate() payable {
    return _baseRate
}

function burnPool() payable {
    return burnPoolAddress
}

function feeBurnRate() payable {
    return feeBurnRate
}

function sub_d73d7bbd(?) payable {
    return sub_d73d7bbdAddress
}

function sub_d7e31605(?) payable {
    return sub_d7e31605Address
}

function _hasStart() payable {
    return bool(_hasStart)
}

function _teamRewardRate() payable {
    return _teamRewardRate
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

function sub_3ee4f73e(?) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    sub_1fa12479 = arg1
}

function sub_ea643bb3(?) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    sub_4e0c6815 = arg1
}

function setInitReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _initReward = arg1
}

function setCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    contractCallerAddress = arg1
}

function setTeamRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _teamRewardRate = arg1
}

function setDividendPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    sub_67eb1456Address = arg1
}

function setFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    feeRewardRate = arg1
    feeBurnRate = arg2
}

function setNft(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    sub_d7e31605Address = arg1
    sub_3157b8d5Address = arg2
}

function setEmergencyStop(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    stor28 = Mask(248, 0, arg1)
    _rewardRate = arg2
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

function setStake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if contractCallerAddress != msg.sender:
        revert with 0, 'invalid address!'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(arg2)] + arg1 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg1
}

function sub_230883f9(?) payable {
    require calldata.size - 4 >= 64
    if sub_074f7ea2[address(arg1)][arg2 << 248].field_0 <= 0:
        return 0
    if sub_074f7ea2[address(arg1)][arg2 << 248].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - sub_074f7ea2[address(arg1)][arg2 << 248].field_512 / 24 * 3600 <= 0:
        return 0
    return sub_074f7ea2[address(arg1)][arg2 << 248].field_256
}

function setInitValue(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if contractCallerAddress != msg.sender:
        revert with 0, 'invalid address!'
    _lastUpdateTime = arg1
    _rewardPerTokenStored = arg2
    if _hasStart:
        revert with 0, 'has started'
    _hasStart = 1
    _startTime = arg3
    _initReward = arg4
    _rewardRate = _initReward / 168 * 24 * 3600
    if _startTime + (168 * 24 * 3600) < _startTime:
        revert with 0, 'SafeMath: addition overflow'
    _periodFinish = _startTime + (168 * 24 * 3600)
    emit RewardAdded(_initReward);
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
        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function setUser(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if contractCallerAddress != msg.sender:
        revert with 0, 'invalid address!'
    userInfo[address(arg1)].field_0 = arg2
    userInfo[address(arg1)].field_256 = arg3
    userInfo[address(arg1)].field_512 = arg4
    userInfo[address(arg1)].field_768 = arg5
    userInfo[address(arg1)].field_1024 = arg6
    if totalSupply + arg7 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg7
    if balanceOf[address(arg1)] + arg7 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg7
    if sub_5e7ec827 + userInfo[address(arg1)].field_768 < sub_5e7ec827:
        revert with 0, 'SafeMath: addition overflow'
    sub_5e7ec827 += userInfo[address(arg1)].field_768
}

function sub_8be727e1(?) payable {
    require calldata.size - 4 >= 32
    if not sub_3157b8d5Address:
        revert with 0, 'no NFT'
    if not sub_d7e31605Address:
        revert with 0, 'no NFT'
    if block.timestamp <= _startTime:
        revert with 0, 'not start'
    require ext_code.size(sub_3157b8d5Address)
    staticcall sub_3157b8d5Address.0x9f7a461a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_0 = 0
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_256 = 0
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_512 = 0
    require ext_code.size(sub_d7e31605Address)
    call sub_d7e31605Address.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x136c43e6: arg1, ext_call.return_data[0] << 248, ext_call.return_data[32], msg.sender
}

function seize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_5efbb7fd(?) payable {
    require calldata.size - 4 >= 32
    if not sub_3157b8d5Address:
        revert with 0, 'no NFT'
    if not sub_d7e31605Address:
        revert with 0, 'no NFT'
    if block.timestamp <= _startTime:
        revert with 0, 'not start'
    require ext_code.size(sub_3157b8d5Address)
    staticcall sub_3157b8d5Address.0x9f7a461a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_0:
        require ext_code.size(sub_d7e31605Address)
        call sub_d7e31605Address.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_0 = arg1
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_256 = ext_call.return_data[32]
    sub_074f7ea2[address(msg.sender)][ext_call.return_data[0] << 248].field_512 = block.timestamp
    require ext_code.size(sub_d7e31605Address)
    call sub_d7e31605Address.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x685462bd: arg1, ext_call.return_data[0] << 248, ext_call.return_data[32], msg.sender
}

function sub_4fd2eb57(?) payable {
    require calldata.size - 4 >= 64
    if arg2 == 2:
        if not sub_3157b8d5Address:
            return sub_4e0c6815
        if not sub_d7e31605Address:
            return sub_4e0c6815
        if sub_074f7ea2[address(arg1)][arg2 << 248].field_0 <= 0:
            return sub_4e0c6815
        if sub_074f7ea2[address(arg1)][arg2 << 248].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - sub_074f7ea2[address(arg1)][arg2 << 248].field_512 / 24 * 3600 <= 0:
            return sub_4e0c6815
        if sub_074f7ea2[address(arg1)][arg2 << 248].field_256 <= 0:
            return sub_4e0c6815
    else:
        if arg2 != 3:
            if not sub_3157b8d5Address:
                return sub_1fa12479
            if not sub_d7e31605Address:
                return sub_1fa12479
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_0 <= 0:
                return sub_1fa12479
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - sub_074f7ea2[address(arg1)][arg2 << 248].field_512 / 24 * 3600 <= 0:
                return sub_1fa12479
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_256 <= 0:
                return sub_1fa12479
        else:
            if not sub_3157b8d5Address:
                return stor17
            if not sub_d7e31605Address:
                return stor17
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_0 <= 0:
                return stor17
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - sub_074f7ea2[address(arg1)][arg2 << 248].field_512 / 24 * 3600 <= 0:
                return stor17
            if sub_074f7ea2[address(arg1)][arg2 << 248].field_256 <= 0:
                return stor17
    ('gt', ('field', 256, ('stor', ('map', ('mask_shl', 8, 0, 248, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_074f7ea2', 27))))), 0)
    return sub_074f7ea2[address(arg1)][arg2 << 248].field_256
}

function rewardPerToken() payable {
    if not sub_5e7ec827:
        return _rewardPerTokenStored
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if sub_5e7ec827 / 1000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5e7ec827 / 1000
            if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / sub_5e7ec827 / 1000))
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if sub_5e7ec827 / 1000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5e7ec827 / 1000
            if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (_rewardPerTokenStored + (0 / sub_5e7ec827 / 1000))
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000))
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / sub_5e7ec827 / 1000))
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (_rewardPerTokenStored + (0 / sub_5e7ec827 / 1000))
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_5e7ec827 / 1000 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5e7ec827 / 1000
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (_rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000))
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_5e7ec827:
        if userInfo[address(arg1)].field_0 > _rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(arg1)].field_768:
            if userInfo[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_768
        if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored - userInfo[address(arg1)].field_0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
    if block.timestamp < _periodFinish:
        if _lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - _lastUpdateTime:
            if sub_5e7ec827 / 1000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5e7ec827 / 1000
            if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[address(arg1)].field_768:
                if userInfo[address(arg1)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_768
            if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
        require block.timestamp - _lastUpdateTime
        if (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) / block.timestamp - _lastUpdateTime != _rewardRate:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate):
            if sub_5e7ec827 / 1000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5e7ec827 / 1000
            if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[address(arg1)].field_768:
                if userInfo[address(arg1)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_768
            if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
        require (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate)
        if (10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (block.timestamp * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(arg1)].field_768:
            if userInfo[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_768
        if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * block.timestamp * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
    if _lastUpdateTime > _periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _periodFinish - _lastUpdateTime:
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(arg1)].field_768:
            if userInfo[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_768
        if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
    require _periodFinish - _lastUpdateTime
    if (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) / _periodFinish - _lastUpdateTime != _rewardRate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate):
        if sub_5e7ec827 / 1000 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5e7ec827 / 1000
        if _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(arg1)].field_768:
            if userInfo[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_768
        if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + (0 / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + (0 / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
    require (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate)
    if (10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / (_periodFinish * _rewardRate) - (_lastUpdateTime * _rewardRate) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_5e7ec827 / 1000 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5e7ec827 / 1000
    if _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) < _rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userInfo[address(arg1)].field_0 > _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000):
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[address(arg1)].field_768:
        if userInfo[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_768
    if (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != _rewardPerTokenStored + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000) - userInfo[address(arg1)].field_0:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if ((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256 < (_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((_rewardPerTokenStored * userInfo[address(arg1)].field_768) + ((10^18 * _periodFinish * _rewardRate) - (10^18 * _lastUpdateTime * _rewardRate) / sub_5e7ec827 / 1000 * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_0 * userInfo[address(arg1)].field_768) / 1000 * 10^18) + userInfo[address(arg1)].field_256)
}



}
