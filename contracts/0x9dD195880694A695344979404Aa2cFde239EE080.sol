contract main {




// =====================  Runtime code  =====================


address owner;
address rewardDistributionAddress;
mapping of uint256 userRewardPaid;
uint256 _rewardPerToken;
uint8 stor4;
address sub_21b17db9Address; offset 8
uint256 totalSupply;
mapping of struct balanceOf;

function _rewardPerToken() {
    return _rewardPerToken
}

function rewardDistribution() {
    return rewardDistributionAddress
}

function totalSupply() {
    return totalSupply
}

function sub_21b17db9(?) {
    return sub_21b17db9Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function userRewardPaid(address arg1) {
    require calldata.size - 4 >= 32
    return userRewardPaid[arg1]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardDistribution(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardDistributionAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferAnyERC20Token(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 != 0x81f3ba76e175337efd07be9e52c24b9943720710
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    if not balanceOf[address(arg1)].field_0:
        if userRewardPaid[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userRewardPaid[address(arg1)]
    if _rewardPerToken * balanceOf[address(arg1)].field_0 / balanceOf[address(arg1)].field_0 != _rewardPerToken:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userRewardPaid[address(arg1)] > _rewardPerToken * balanceOf[address(arg1)].field_0 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((_rewardPerToken * balanceOf[address(arg1)].field_0 / 10^18) - userRewardPaid[address(arg1)])
}

function _fallback() payable {
    if not stor4:
        revert with 0, 're-entered'
    stor4 = 0
    if rewardDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7243616c6c6572206973206e6f742072657761726420646973747269627574696f,
                    mem[197 len 31]
    if not msg.value:
        require totalSupply
        if (0 / totalSupply) + _rewardPerToken < _rewardPerToken:
            revert with 0, 'SafeMath: addition overflow'
        _rewardPerToken += 0 / totalSupply
    else:
        if 10^18 * msg.value / msg.value != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require totalSupply
        if (10^18 * msg.value / totalSupply) + _rewardPerToken < _rewardPerToken:
            revert with 0, 'SafeMath: addition overflow'
        _rewardPerToken += 10^18 * msg.value / totalSupply
    stor4 = 1
}

function notifyRewardAmount() payable {
    if not stor4:
        revert with 0, 're-entered'
    stor4 = 0
    if rewardDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7243616c6c6572206973206e6f742072657761726420646973747269627574696f,
                    mem[197 len 31]
    if not msg.value:
        require totalSupply
        if (0 / totalSupply) + _rewardPerToken < _rewardPerToken:
            revert with 0, 'SafeMath: addition overflow'
        _rewardPerToken += 0 / totalSupply
    else:
        if 10^18 * msg.value / msg.value != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require totalSupply
        if (10^18 * msg.value / totalSupply) + _rewardPerToken < _rewardPerToken:
            revert with 0, 'SafeMath: addition overflow'
        _rewardPerToken += 10^18 * msg.value / totalSupply
    stor4 = 1
}

function force_withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot withdraw 0'
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 -= arg1
    if not ext_code.hash(sub_21b17db9Address):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(sub_21b17db9Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_21b17db9Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot withdraw 0'
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 -= arg1
    if not arg1:
        if 0 > userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if _rewardPerToken * arg1 / arg1 != _rewardPerToken:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if _rewardPerToken * arg1 / 10^18 > userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        userRewardPaid[msg.sender] -= _rewardPerToken * arg1 / 10^18
    if not ext_code.hash(sub_21b17db9Address):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(sub_21b17db9Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_21b17db9Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[420]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    emit Withdrawn(arg1, msg.sender);
}

function getReward() {
    if not stor4:
        revert with 0, 're-entered'
    stor4 = 0
    if not balanceOf[address(msg.sender)].field_0:
        if userRewardPaid[address(msg.sender)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[msg.sender].field_0:
            userRewardPaid[msg.sender] = 0
        else:
            if _rewardPerToken * balanceOf[msg.sender].field_0 / balanceOf[msg.sender].field_0 != _rewardPerToken:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            userRewardPaid[msg.sender] = _rewardPerToken * balanceOf[msg.sender].field_0 / 10^18
        call msg.sender with:
           value -userRewardPaid[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardPaid(-userRewardPaid[address(msg.sender)], msg.sender);
    else:
        if _rewardPerToken * balanceOf[address(msg.sender)].field_0 / balanceOf[address(msg.sender)].field_0 != _rewardPerToken:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userRewardPaid[address(msg.sender)] > _rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[msg.sender].field_0:
            userRewardPaid[msg.sender] = 0
        else:
            if _rewardPerToken * balanceOf[msg.sender].field_0 / balanceOf[msg.sender].field_0 != _rewardPerToken:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            userRewardPaid[msg.sender] = _rewardPerToken * balanceOf[msg.sender].field_0 / 10^18
        call msg.sender with:
           value (_rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18) - userRewardPaid[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardPaid(((_rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18) - userRewardPaid[address(msg.sender)]), msg.sender);
    stor4 = 1
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot stake 0'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender].field_0 += arg1
    if not arg1:
        if userRewardPaid[msg.sender] < userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if _rewardPerToken * arg1 / arg1 != _rewardPerToken:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (_rewardPerToken * arg1 / 10^18) + userRewardPaid[msg.sender] < userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        userRewardPaid[msg.sender] += _rewardPerToken * arg1 / 10^18
    if not ext_code.hash(sub_21b17db9Address):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(sub_21b17db9Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call sub_21b17db9Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
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
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    emit Staked(arg1, msg.sender);
}

function exit() {
    if not stor4:
        revert with 0, 're-entered'
    stor4 = 0
    if not balanceOf[address(msg.sender)].field_0:
        if userRewardPaid[address(msg.sender)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[msg.sender].field_0:
            userRewardPaid[msg.sender] = 0
        else:
            if _rewardPerToken * balanceOf[msg.sender].field_0 / balanceOf[msg.sender].field_0 != _rewardPerToken:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            userRewardPaid[msg.sender] = _rewardPerToken * balanceOf[msg.sender].field_0 / 10^18
        call msg.sender with:
           value -userRewardPaid[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardPaid(-userRewardPaid[address(msg.sender)], msg.sender);
    else:
        if _rewardPerToken * balanceOf[address(msg.sender)].field_0 / balanceOf[address(msg.sender)].field_0 != _rewardPerToken:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userRewardPaid[address(msg.sender)] > _rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[msg.sender].field_0:
            userRewardPaid[msg.sender] = 0
        else:
            if _rewardPerToken * balanceOf[msg.sender].field_0 / balanceOf[msg.sender].field_0 != _rewardPerToken:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            userRewardPaid[msg.sender] = _rewardPerToken * balanceOf[msg.sender].field_0 / 10^18
        call msg.sender with:
           value (_rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18) - userRewardPaid[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardPaid(((_rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18) - userRewardPaid[address(msg.sender)]), msg.sender);
    stor4 = 1
    if balanceOf[address(msg.sender)].field_0 <= 0:
        revert with 0, 'Cannot withdraw 0'
    if balanceOf[address(msg.sender)].field_0 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= balanceOf[address(msg.sender)].field_0
    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
    if not balanceOf[address(msg.sender)].field_0:
        if 0 > userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if _rewardPerToken * balanceOf[address(msg.sender)].field_0 / balanceOf[address(msg.sender)].field_0 != _rewardPerToken:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if _rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18 > userRewardPaid[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        userRewardPaid[msg.sender] -= _rewardPerToken * balanceOf[address(msg.sender)].field_0 / 10^18
    if not ext_code.hash(sub_21b17db9Address):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(sub_21b17db9Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
    call sub_21b17db9Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args balanceOf[address(msg.sender)].field_0, mem[516 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[484]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 563 len 22]
    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
}



}
