contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAndClaimReward()
#
address owner;
address _stakeTokenAddress;
address stor2;
array of address _stakeholders;
mapping of struct sub_d151bfcd;
address _rewardTokenAddress;
address stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
uint256 _rewardClaimFee;
uint256 sub_e07bd415;
uint256 sub_a27f3fa6;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 sub_40f233d8;
uint256 sub_b3e95b54;
uint256 sub_4d9ff3b5;
uint256 sub_1634404c;
uint256 sub_3dab98ff;
uint256 stor20; offset 32
uint256 sub_237c3390;
big480 stor20;
address poolAddress;
uint256 poolDeployedAt;
mapping of uint8 stor23;
mapping of uint8 stor24;

function _stakeTokenAddress() {
    return _stakeTokenAddress
}

function _rewardTokenAddress() {
    return _rewardTokenAddress
}

function sub_1634404c(?) {
    return sub_1634404c
}

function pool() {
    return poolAddress
}

function _stakeholders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _stakeholders.length
    return _stakeholders[arg1]
}

function sub_237c3390(?) {
    return sub_237c3390
}

function sub_3dab98ff(?) {
    return sub_3dab98ff
}

function sub_40f233d8(?) {
    return sub_40f233d8
}

function sub_4d9ff3b5(?) {
    return sub_4d9ff3b5
}

function owner() {
    return owner
}

function sub_a27f3fa6(?) {
    return sub_a27f3fa6
}

function _rewardClaimFee() {
    return _rewardClaimFee
}

function sub_b3e95b54(?) {
    return sub_b3e95b54
}

function sub_d151bfcd(?) {
    require calldata.size - 4 >= 32
    return sub_d151bfcd[arg1].field_0, 
           sub_d151bfcd[arg1].field_256,
           sub_d151bfcd[arg1].field_512,
           sub_d151bfcd[arg1].field_768,
           sub_d151bfcd[arg1].field_1024,
           sub_d151bfcd[arg1].field_1280
}

function sub_e07bd415(?) {
    return sub_e07bd415
}

function poolDeployedAt() {
    return poolDeployedAt
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addSystemPool(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = 1
    return 1
}

function addPoolDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = 1
    return 1
}

function removeSystemPool(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = 0
    return 1
}

function removePoolDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = 0
    return 1
}

function isStakeholder(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _stakeholders.length:
        mem[0] = 3
        if arg1 != _stakeholders[idx]:
            idx = idx + 1
            continue 
        return 1, idx
    return 0
}

function setRewardClaimFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e52657761726420636c61696d20666565206d757374206265206e6f6e65207a65726f2076616c7565,
                    mem[205 len 23]
    _rewardClaimFee = arg1
}

function setTransactionFeeInWei(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e52657761726420636c61696d20666565206d757374206265206e6f6e65207a65726f2076616c7565,
                    mem[205 len 23]
    sub_e07bd415 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function developerWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == poolAddress:
        revert with 0, 'Invalid address to withdraw.'
    if bool(stor23[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e596f757220617265206e6f74206120646576656c6f706572206f66207468697320706f6f6c,
                    mem[202 len 26]
    if eth.balance(this.address) <= arg1:
        revert with 0, 'Invalid amount to withdraw'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getPoolDistributedReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not _stakeholders.length:
        return 0
    if arg1 < sub_40f233d8:
        return 0
    if not sub_b3e95b54:
        return 0
    if block.timestamp <= sub_1634404c:
        if sub_b3e95b54 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_3dab98ff:
            return 0
        require sub_3dab98ff
        if (block.timestamp * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_b3e95b54:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((block.timestamp * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff))
    if sub_b3e95b54 > sub_1634404c:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_3dab98ff:
        return 0
    require sub_3dab98ff
    if (sub_1634404c * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_b3e95b54:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((sub_1634404c * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff))
}

function withdrawDepositFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_237c3390:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e42616c616e6365206973206e6f7420656e6f75676820746f207769746864726177,
                    mem[198 len 30]
    if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, stor20.field_32)
    call stor2 with:
         gas gas_remaining wei
        args Mask(480, 0, stor20.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_237c3390
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transferUnpaidRewardsToPool(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_1634404c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e5468697320706f6f6c206973206163746976652063616e206e6f74207472616e73666572207265776172647320746f20616e6f74686572,
                    mem[220 len 8]
    if bool(stor23[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73496e76616c696420706f6f6c206164647265737320746f207472616e736665722072657761726473,
                    mem[205 len 23]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e42616c616e6365206973206e6f7420656e6f75676820746f207472616e73666572,
                    mem[198 len 30]
    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor6):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call stor6 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 0
}

function getPoolInformation() {
    if not _stakeholders.length:
        if 0 > stor13:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor13, 
               stor13,
               sub_4d9ff3b5,
               sub_40f233d8,
               block.timestamp > sub_1634404c,
               0,
               stor14,
               _stakeholders.length,
               stor12,
               sub_3dab98ff,
               sub_1634404c
    if block.timestamp < sub_40f233d8:
        if 0 > stor13:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor13, 
               stor13,
               sub_4d9ff3b5,
               sub_40f233d8,
               block.timestamp > sub_1634404c,
               0,
               stor14,
               _stakeholders.length,
               stor12,
               sub_3dab98ff,
               sub_1634404c
    if not sub_b3e95b54:
        if 0 > stor13:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor13, 
               stor13,
               sub_4d9ff3b5,
               sub_40f233d8,
               block.timestamp > sub_1634404c,
               0,
               stor14,
               _stakeholders.length,
               stor12,
               sub_3dab98ff,
               sub_1634404c
    if block.timestamp <= sub_1634404c:
        if sub_b3e95b54 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_3dab98ff:
            if 0 > stor13:
                revert with 0, 'SafeMath: subtraction overflow'
            return stor13, 
                   stor13,
                   sub_4d9ff3b5,
                   sub_40f233d8,
                   block.timestamp > sub_1634404c,
                   0,
                   stor14,
                   _stakeholders.length,
                   stor12,
                   sub_3dab98ff,
                   sub_1634404c
        require sub_3dab98ff
        if (block.timestamp * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_b3e95b54:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (block.timestamp * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) > stor13:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor13, 
               stor13 - (block.timestamp * sub_3dab98ff) + (sub_b3e95b54 * sub_3dab98ff),
               sub_4d9ff3b5,
               sub_40f233d8,
               block.timestamp > sub_1634404c,
               (block.timestamp * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff),
               stor14,
               _stakeholders.length,
               stor12,
               sub_3dab98ff,
               sub_1634404c
    if sub_b3e95b54 > sub_1634404c:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_3dab98ff:
        if 0 > stor13:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor13, 
               stor13,
               sub_4d9ff3b5,
               sub_40f233d8,
               block.timestamp > sub_1634404c,
               0,
               stor14,
               _stakeholders.length,
               stor12,
               sub_3dab98ff,
               sub_1634404c
    require sub_3dab98ff
    if (sub_1634404c * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_b3e95b54:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (sub_1634404c * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff) > stor13:
        revert with 0, 'SafeMath: subtraction overflow'
    return stor13, 
           stor13 - (sub_1634404c * sub_3dab98ff) + (sub_b3e95b54 * sub_3dab98ff),
           sub_4d9ff3b5,
           sub_40f233d8,
           block.timestamp > sub_1634404c,
           (sub_1634404c * sub_3dab98ff) - (sub_b3e95b54 * sub_3dab98ff),
           stor14,
           _stakeholders.length,
           stor12,
           sub_3dab98ff,
           sub_1634404c
}

function rewardOf(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_b3e95b54:
        return 0
    if not sub_d151bfcd[address(arg1)].field_512:
        return 0
    if not stor12:
        return 0
    if block.timestamp <= sub_1634404c:
        if sub_d151bfcd[address(arg1)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_d151bfcd[address(arg1)].field_1024:
            return stor7[address(arg1)], sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
        if not sub_3dab98ff:
            if sub_d151bfcd[address(arg1)].field_512:
                require sub_d151bfcd[address(arg1)].field_512
                if 0 / sub_d151bfcd[address(arg1)].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(arg1)] + (0 / stor12) < stor7[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[address(arg1)] + (0 / stor12), sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
        require sub_3dab98ff
        if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not sub_d151bfcd[address(arg1)].field_512:
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(arg1)] + (0 / stor12) < stor7[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[address(arg1)] + (0 / stor12), sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
        require sub_d151bfcd[address(arg1)].field_512
        if (block.timestamp * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / sub_d151bfcd[address(arg1)].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if stor7[address(arg1)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / stor12) < stor7[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[address(arg1)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / stor12), 
               sub_d151bfcd[address(arg1)].field_512,
               stor8[address(arg1)]
    if sub_d151bfcd[address(arg1)].field_1024 > sub_1634404c:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_1634404c - sub_d151bfcd[address(arg1)].field_1024:
        return stor7[address(arg1)], sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
    if not sub_3dab98ff:
        if sub_d151bfcd[address(arg1)].field_512:
            require sub_d151bfcd[address(arg1)].field_512
            if 0 / sub_d151bfcd[address(arg1)].field_512:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if stor7[address(arg1)] + (0 / stor12) < stor7[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[address(arg1)] + (0 / stor12), sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
    require sub_3dab98ff
    if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[address(arg1)].field_1024:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_d151bfcd[address(arg1)].field_512:
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if stor7[address(arg1)] + (0 / stor12) < stor7[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[address(arg1)] + (0 / stor12), sub_d151bfcd[address(arg1)].field_512, stor8[address(arg1)]
    require sub_d151bfcd[address(arg1)].field_512
    if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / sub_d151bfcd[address(arg1)].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff):
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor12 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor12
    if stor7[address(arg1)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / stor12) < stor7[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return stor7[address(arg1)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) - (sub_d151bfcd[address(arg1)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(arg1)].field_512) / stor12), 
           sub_d151bfcd[address(arg1)].field_512,
           stor8[address(arg1)]
}

function myPoolInformation() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < _stakeholders.length:
        mem[0] = 3
        if _stakeholders[idx] != msg.sender:
            idx = idx + 1
            continue 
        if not sub_b3e95b54:
            return sub_d151bfcd[address(msg.sender)].field_0, 
                   sub_d151bfcd[address(msg.sender)].field_512,
                   sub_d151bfcd[address(msg.sender)].field_256,
                   sub_d151bfcd[address(msg.sender)].field_768,
                   0,
                   stor8[address(msg.sender)],
                   sub_d151bfcd[address(msg.sender)].field_1280
        if not sub_d151bfcd[address(msg.sender)].field_512:
            return sub_d151bfcd[address(msg.sender)].field_0, 
                   sub_d151bfcd[address(msg.sender)].field_512,
                   sub_d151bfcd[address(msg.sender)].field_256,
                   sub_d151bfcd[address(msg.sender)].field_768,
                   0,
                   stor8[address(msg.sender)],
                   sub_d151bfcd[address(msg.sender)].field_1280
        if not stor12:
            return sub_d151bfcd[address(msg.sender)].field_0, 
                   sub_d151bfcd[address(msg.sender)].field_512,
                   sub_d151bfcd[address(msg.sender)].field_256,
                   sub_d151bfcd[address(msg.sender)].field_768,
                   0,
                   stor8[address(msg.sender)],
                   sub_d151bfcd[address(msg.sender)].field_1280
        mem[128] = 'SafeMath: subtraction overflow'
        if block.timestamp <= sub_1634404c:
            if sub_d151bfcd[address(msg.sender)].field_1024 > block.timestamp:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[228] = mem[230 len 30]
                revert with 0, 32, 30, mem[228]
            if not block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                return sub_d151bfcd[address(msg.sender)].field_0, 
                       sub_d151bfcd[address(msg.sender)].field_512,
                       sub_d151bfcd[address(msg.sender)].field_256,
                       sub_d151bfcd[address(msg.sender)].field_768,
                       stor7[address(msg.sender)],
                       stor8[address(msg.sender)],
                       sub_d151bfcd[address(msg.sender)].field_1280
            if not sub_3dab98ff:
                if sub_d151bfcd[address(msg.sender)].field_512:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                mem[192] = 'SafeMath: division by zero'
                if stor12 > 0:
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_d151bfcd[address(msg.sender)].field_0, 
                           sub_d151bfcd[address(msg.sender)].field_512,
                           sub_d151bfcd[address(msg.sender)].field_256,
                           sub_d151bfcd[address(msg.sender)].field_768,
                           stor7[address(msg.sender)] + (0 / stor12),
                           stor8[address(msg.sender)],
                           sub_d151bfcd[address(msg.sender)].field_1280
            else:
                require sub_3dab98ff
                if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sub_d151bfcd[address(msg.sender)].field_512:
                    mem[192] = 'SafeMath: division by zero'
                    if stor12 > 0:
                        require stor12
                        if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_d151bfcd[address(msg.sender)].field_0, 
                               sub_d151bfcd[address(msg.sender)].field_512,
                               sub_d151bfcd[address(msg.sender)].field_256,
                               sub_d151bfcd[address(msg.sender)].field_768,
                               stor7[address(msg.sender)] + (0 / stor12),
                               stor8[address(msg.sender)],
                               sub_d151bfcd[address(msg.sender)].field_1280
                else:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if (block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    mem[192] = 'SafeMath: division by zero'
                    if stor12 > 0:
                        require stor12
                        if stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_d151bfcd[address(msg.sender)].field_0, 
                               sub_d151bfcd[address(msg.sender)].field_512,
                               sub_d151bfcd[address(msg.sender)].field_256,
                               sub_d151bfcd[address(msg.sender)].field_768,
                               stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12),
                               stor8[address(msg.sender)],
                               sub_d151bfcd[address(msg.sender)].field_1280
        else:
            if sub_d151bfcd[address(msg.sender)].field_1024 > sub_1634404c:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[228] = mem[230 len 30]
                revert with 0, 32, 30, mem[228]
            if not sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
                return sub_d151bfcd[address(msg.sender)].field_0, 
                       sub_d151bfcd[address(msg.sender)].field_512,
                       sub_d151bfcd[address(msg.sender)].field_256,
                       sub_d151bfcd[address(msg.sender)].field_768,
                       stor7[address(msg.sender)],
                       stor8[address(msg.sender)],
                       sub_d151bfcd[address(msg.sender)].field_1280
            if not sub_3dab98ff:
                if sub_d151bfcd[address(msg.sender)].field_512:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                mem[192] = 'SafeMath: division by zero'
                if stor12 > 0:
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_d151bfcd[address(msg.sender)].field_0, 
                           sub_d151bfcd[address(msg.sender)].field_512,
                           sub_d151bfcd[address(msg.sender)].field_256,
                           sub_d151bfcd[address(msg.sender)].field_768,
                           stor7[address(msg.sender)] + (0 / stor12),
                           stor8[address(msg.sender)],
                           sub_d151bfcd[address(msg.sender)].field_1280
            else:
                require sub_3dab98ff
                if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sub_d151bfcd[address(msg.sender)].field_512:
                    mem[192] = 'SafeMath: division by zero'
                    if stor12 > 0:
                        require stor12
                        if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_d151bfcd[address(msg.sender)].field_0, 
                               sub_d151bfcd[address(msg.sender)].field_512,
                               sub_d151bfcd[address(msg.sender)].field_256,
                               sub_d151bfcd[address(msg.sender)].field_768,
                               stor7[address(msg.sender)] + (0 / stor12),
                               stor8[address(msg.sender)],
                               sub_d151bfcd[address(msg.sender)].field_1280
                else:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    mem[192] = 'SafeMath: division by zero'
                    if stor12 > 0:
                        require stor12
                        if stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_d151bfcd[address(msg.sender)].field_0, 
                               sub_d151bfcd[address(msg.sender)].field_512,
                               sub_d151bfcd[address(msg.sender)].field_256,
                               sub_d151bfcd[address(msg.sender)].field_768,
                               stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12),
                               stor8[address(msg.sender)],
                               sub_d151bfcd[address(msg.sender)].field_1280
        ('le', ('stor', ('name', 'stor12', 12)), 0)
        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[228] = 32
        idx = 0
        while idx < 26:
            mem[idx + 292] = mem[idx + 192]
            idx = idx + 32
            continue 
        mem[292] = mem[298 len 26]
        revert with 0, 32, 26, mem[292]
    return 0
}

function stake(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.value < sub_e07bd415:
        revert with 0, 'Missing transaction fee.'
    if block.timestamp >= sub_1634404c:
        revert with 0, 'Pool is ended.'
    if block.timestamp <= sub_40f233d8:
        revert with 0, 'Pool is not open yet.'
    if block.timestamp > sub_1634404c:
        idx = 0
        while idx < _stakeholders.length:
            if not sub_b3e95b54:
                require idx < _stakeholders.length
                stor7[stor3[idx]] = 0
            else:
                if not sub_d151bfcd[stor3[idx]].field_512:
                    require idx < _stakeholders.length
                    stor7[stor3[idx]] = 0
                else:
                    if not stor12:
                        require idx < _stakeholders.length
                        stor7[stor3[idx]] = 0
                    else:
                        mem[0] = _stakeholders[idx]
                        mem[32] = 4
                        if block.timestamp <= sub_1634404c:
                            _2286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2286] = 30
                            mem[_2286 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > block.timestamp:
                                _2305 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2305 + idx + 68] = mem[_2286 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2305 + 68] = mem[_2305 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2305 + -mem[64] + 100
                            if not block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2471 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2471] = 26
                                        mem[_2471 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2506 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2506 + idx + 68] = mem[_2471 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2506 + 68] = mem[_2506 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2506 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2505 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2505] = 26
                                        mem[_2505 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2561 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2561 + idx + 68] = mem[_2505 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2561 + 68] = mem[_2561 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2561 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2504 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2504] = 26
                                        mem[_2504 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2558 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2558 + idx + 68] = mem[_2504 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2558 + 68] = mem[_2558 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2558 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2557 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2557] = 26
                                        mem[_2557 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2622 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2622 + idx + 68] = mem[_2557 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2622 + 68] = mem[_2622 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2622 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
                        else:
                            _2287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2287] = 30
                            mem[_2287 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > sub_1634404c:
                                _2308 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2308 + idx + 68] = mem[_2287 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2308 + 68] = mem[_2308 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2308 + -mem[64] + 100
                            if not sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2472 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2472] = 26
                                        mem[_2472 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2511 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2511 + idx + 68] = mem[_2472 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2511 + 68] = mem[_2511 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2511 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2510 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2510] = 26
                                        mem[_2510 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2569 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2569 + idx + 68] = mem[_2510 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2569 + 68] = mem[_2569 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2569 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2509 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2509] = 26
                                        mem[_2509 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2566 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2566 + idx + 68] = mem[_2509 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2566 + 68] = mem[_2566 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2566 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2565 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2565] = 26
                                        mem[_2565 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2628 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2628 + idx + 68] = mem[_2565 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2628 + 68] = mem[_2628 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2628 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
            mem[0] = _stakeholders[idx]
            mem[32] = 4
            sub_d151bfcd[stor3[idx]].field_1024 = sub_1634404c
            idx = idx + 1
            continue 
        if arg1 <= 0:
            revert with 0, 
                        32,
                        45,
                        0x2e5374616b696e6720746f6b656e20616d6f756e74206d757374206265206e6f6e65207a65726f2076616c7565,
                        mem[mem[64] + 113 len 19]
        if sub_a27f3fa6 <= 0:
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, poolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 
                            32,
                            94,
                            0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                            mem[mem[64] + 162 len 2]
            _2265 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = poolAddress
            mem[mem[64] + 100] = arg1
            _2266 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2265 + 132] = 32
            mem[_2265 + 164] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor2):
                revert with 0, 'Address: call to non-contract'
            _2352 = mem[_2266]
            mem[_2265 + 196 len floor32(mem[_2266])] = mem[_2266 + 32 len floor32(mem[_2266])]
            mem[_2265 + floor32(mem[_2266]) + -(mem[_2266] % 32) + 228 len mem[_2266] % 32] = mem[_2266 + -(mem[_2266] % 32) + floor32(mem[_2266]) + 64 len mem[_2266] % 32]
            call stor2.mem[_2265 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_2265 + 200 len _2352 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2265 + 306 len 22]
            else:
                mem[_2265 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_2265 + 228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2265 + ceil32(return_data.size) + 307 len 22]
            emit TransferSuccessful(arg1, msg.sender, poolAddress);
            if not _stakeholders.length:
                sub_b3e95b54 = block.timestamp
                if block.timestamp + sub_4d9ff3b5 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1634404c = block.timestamp + sub_4d9ff3b5
            idx = 0
            while idx < _stakeholders.length:
                mem[0] = 3
                if _stakeholders[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
                if sub_d151bfcd[address(msg.sender)].field_512 + arg1 < sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d151bfcd[address(msg.sender)].field_512 += arg1
                emit StakeSuccessful(arg1, block.timestamp, msg.sender);
                if stor12 + arg1 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg1
                return 1, arg1
            _stakeholders.length++
            _stakeholders[_stakeholders.length] = msg.sender
            sub_d151bfcd[address(msg.sender)].field_0 = msg.sender
            sub_d151bfcd[address(msg.sender)].field_256 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_512 = arg1
            sub_d151bfcd[address(msg.sender)].field_768 = 0
            sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_1280 = 0
            stor7[address(msg.sender)] = 0
            emit StakeSuccessful(arg1, block.timestamp, msg.sender);
            if stor12 + arg1 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg1
            return 1, arg1
        if not arg1:
            _2268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2268] = 26
            mem[_2268 + 32] = 'SafeMath: division by zero'
            _2321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2321] = 30
            mem[_2321 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_237c3390 < sub_237c3390:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, poolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 
                            32,
                            94,
                            0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                            mem[mem[64] + 162 len 2]
            _2554 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = poolAddress
            mem[mem[64] + 100] = arg1
            _2555 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2554 + 132] = 32
            mem[_2554 + 164] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor2):
                revert with 0, 'Address: call to non-contract'
            _2802 = mem[_2555]
            mem[_2554 + 196 len floor32(mem[_2555])] = mem[_2555 + 32 len floor32(mem[_2555])]
            mem[_2554 + floor32(mem[_2555]) + -(mem[_2555] % 32) + 228 len mem[_2555] % 32] = mem[_2555 + -(mem[_2555] % 32) + floor32(mem[_2555]) + 64 len mem[_2555] % 32]
            call stor2.mem[_2554 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_2554 + 200 len _2802 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2554 + 306 len 22]
            else:
                mem[_2554 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_2554 + 228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2554 + ceil32(return_data.size) + 307 len 22]
            emit TransferSuccessful(arg1, msg.sender, poolAddress);
            if not _stakeholders.length:
                sub_b3e95b54 = block.timestamp
                if block.timestamp + sub_4d9ff3b5 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1634404c = block.timestamp + sub_4d9ff3b5
            idx = 0
            while idx < _stakeholders.length:
                mem[0] = 3
                if _stakeholders[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
                if sub_d151bfcd[address(msg.sender)].field_512 + arg1 < sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d151bfcd[address(msg.sender)].field_512 += arg1
                emit StakeSuccessful(arg1, block.timestamp, msg.sender);
                if stor12 + arg1 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg1
                return 1, arg1
            _stakeholders.length++
            _stakeholders[_stakeholders.length] = msg.sender
            sub_d151bfcd[address(msg.sender)].field_0 = msg.sender
            sub_d151bfcd[address(msg.sender)].field_256 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_512 = arg1
            sub_d151bfcd[address(msg.sender)].field_768 = 0
            sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_1280 = 0
            stor7[address(msg.sender)] = 0
            emit StakeSuccessful(arg1, block.timestamp, msg.sender);
            if stor12 + arg1 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg1
            return 1, arg1
        require arg1
        if arg1 * sub_a27f3fa6 / arg1 != sub_a27f3fa6:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2299 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2299] = 26
        mem[_2299 + 32] = 'SafeMath: division by zero'
        _2355 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2355] = 30
        mem[_2355 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * sub_a27f3fa6 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_237c3390 + (arg1 * sub_a27f3fa6 / 100) < sub_237c3390:
            revert with 0, 'SafeMath: addition overflow'
        sub_237c3390 += arg1 * sub_a27f3fa6 / 100
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, poolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 
                        32,
                        94,
                        0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                        mem[mem[64] + 162 len 2]
        _2619 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = poolAddress
        mem[mem[64] + 100] = arg1
        _2620 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_2619 + 132] = 32
        mem[_2619 + 164] = 'SafeERC20: low-level call failed'
        if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor2):
            revert with 0, 'Address: call to non-contract'
        _2880 = mem[_2620]
        mem[_2619 + 196 len floor32(mem[_2620])] = mem[_2620 + 32 len floor32(mem[_2620])]
        mem[_2619 + floor32(mem[_2620]) + -(mem[_2620] % 32) + 228 len mem[_2620] % 32] = mem[_2620 + -(mem[_2620] % 32) + floor32(mem[_2620]) + 64 len mem[_2620] % 32]
        call stor2.mem[_2619 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_2619 + 200 len _2880 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2619 + 306 len 22]
        else:
            mem[_2619 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_2619 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2619 + ceil32(return_data.size) + 307 len 22]
    else:
        idx = 0
        while idx < _stakeholders.length:
            if not sub_b3e95b54:
                require idx < _stakeholders.length
                stor7[stor3[idx]] = 0
            else:
                if not sub_d151bfcd[stor3[idx]].field_512:
                    require idx < _stakeholders.length
                    stor7[stor3[idx]] = 0
                else:
                    if not stor12:
                        require idx < _stakeholders.length
                        stor7[stor3[idx]] = 0
                    else:
                        mem[0] = _stakeholders[idx]
                        mem[32] = 4
                        if block.timestamp <= sub_1634404c:
                            _2293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2293] = 30
                            mem[_2293 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > block.timestamp:
                                _2311 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2311 + idx + 68] = mem[_2293 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2311 + 68] = mem[_2311 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2311 + -mem[64] + 100
                            if not block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2473 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2473] = 26
                                        mem[_2473 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2523 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2523 + idx + 68] = mem[_2473 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2523 + 68] = mem[_2523 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2523 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2522 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2522] = 26
                                        mem[_2522 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2589 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2589 + idx + 68] = mem[_2522 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2589 + 68] = mem[_2589 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2589 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2521 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2521] = 26
                                        mem[_2521 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2586 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2586 + idx + 68] = mem[_2521 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2586 + 68] = mem[_2586 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2586 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2585 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2585] = 26
                                        mem[_2585 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2637 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2637 + idx + 68] = mem[_2585 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2637 + 68] = mem[_2637 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2637 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
                        else:
                            _2294 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2294] = 30
                            mem[_2294 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > sub_1634404c:
                                _2314 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2314 + idx + 68] = mem[_2294 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2314 + 68] = mem[_2314 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2314 + -mem[64] + 100
                            if not sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2474 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2474] = 26
                                        mem[_2474 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2528 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2528 + idx + 68] = mem[_2474 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2528 + 68] = mem[_2528 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2528 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2527] = 26
                                        mem[_2527 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2597 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2597 + idx + 68] = mem[_2527 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2597 + 68] = mem[_2597 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2597 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _2526 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2526] = 26
                                        mem[_2526 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2594 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2594 + idx + 68] = mem[_2526 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2594 + 68] = mem[_2594 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2594 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2593 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2593] = 26
                                        mem[_2593 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _2643 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_2643 + idx + 68] = mem[_2593 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2643 + 68] = mem[_2643 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _2643 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
            mem[0] = _stakeholders[idx]
            mem[32] = 4
            sub_d151bfcd[stor3[idx]].field_1024 = block.timestamp
            idx = idx + 1
            continue 
        if arg1 <= 0:
            revert with 0, 
                        32,
                        45,
                        0x2e5374616b696e6720746f6b656e20616d6f756e74206d757374206265206e6f6e65207a65726f2076616c7565,
                        mem[mem[64] + 113 len 19]
        if sub_a27f3fa6 <= 0:
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, poolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 
                            32,
                            94,
                            0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                            mem[mem[64] + 162 len 2]
            _2275 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = poolAddress
            mem[mem[64] + 100] = arg1
            _2276 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2275 + 132] = 32
            mem[_2275 + 164] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor2):
                revert with 0, 'Address: call to non-contract'
            _2360 = mem[_2276]
            mem[_2275 + 196 len floor32(mem[_2276])] = mem[_2276 + 32 len floor32(mem[_2276])]
            mem[_2275 + floor32(mem[_2276]) + -(mem[_2276] % 32) + 228 len mem[_2276] % 32] = mem[_2276 + -(mem[_2276] % 32) + floor32(mem[_2276]) + 64 len mem[_2276] % 32]
            call stor2.mem[_2275 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_2275 + 200 len _2360 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2275 + 306 len 22]
            else:
                mem[_2275 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_2275 + 228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2275 + ceil32(return_data.size) + 307 len 22]
            emit TransferSuccessful(arg1, msg.sender, poolAddress);
            if not _stakeholders.length:
                sub_b3e95b54 = block.timestamp
                if block.timestamp + sub_4d9ff3b5 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1634404c = block.timestamp + sub_4d9ff3b5
            idx = 0
            while idx < _stakeholders.length:
                mem[0] = 3
                if _stakeholders[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
                if sub_d151bfcd[address(msg.sender)].field_512 + arg1 < sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d151bfcd[address(msg.sender)].field_512 += arg1
                emit StakeSuccessful(arg1, block.timestamp, msg.sender);
                if stor12 + arg1 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg1
                return 1, arg1
            _stakeholders.length++
            _stakeholders[_stakeholders.length] = msg.sender
            sub_d151bfcd[address(msg.sender)].field_0 = msg.sender
            sub_d151bfcd[address(msg.sender)].field_256 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_512 = arg1
            sub_d151bfcd[address(msg.sender)].field_768 = 0
            sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_1280 = 0
            stor7[address(msg.sender)] = 0
            emit StakeSuccessful(arg1, block.timestamp, msg.sender);
            if stor12 + arg1 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg1
            return 1, arg1
        if not arg1:
            _2278 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2278] = 26
            mem[_2278 + 32] = 'SafeMath: division by zero'
            _2332 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2332] = 30
            mem[_2332 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_237c3390 < sub_237c3390:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, poolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 
                            32,
                            94,
                            0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                            mem[mem[64] + 162 len 2]
            _2582 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = poolAddress
            mem[mem[64] + 100] = arg1
            _2583 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_2582 + 132] = 32
            mem[_2582 + 164] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor2):
                revert with 0, 'Address: call to non-contract'
            _2816 = mem[_2583]
            mem[_2582 + 196 len floor32(mem[_2583])] = mem[_2583 + 32 len floor32(mem[_2583])]
            mem[_2582 + floor32(mem[_2583]) + -(mem[_2583] % 32) + 228 len mem[_2583] % 32] = mem[_2583 + -(mem[_2583] % 32) + floor32(mem[_2583]) + 64 len mem[_2583] % 32]
            call stor2.mem[_2582 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_2582 + 200 len _2816 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2582 + 306 len 22]
            else:
                mem[_2582 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_2582 + 228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2582 + ceil32(return_data.size) + 307 len 22]
            emit TransferSuccessful(arg1, msg.sender, poolAddress);
            if not _stakeholders.length:
                sub_b3e95b54 = block.timestamp
                if block.timestamp + sub_4d9ff3b5 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1634404c = block.timestamp + sub_4d9ff3b5
            idx = 0
            while idx < _stakeholders.length:
                mem[0] = 3
                if _stakeholders[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
                if sub_d151bfcd[address(msg.sender)].field_512 + arg1 < sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d151bfcd[address(msg.sender)].field_512 += arg1
                emit StakeSuccessful(arg1, block.timestamp, msg.sender);
                if stor12 + arg1 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg1
                return 1, arg1
            _stakeholders.length++
            _stakeholders[_stakeholders.length] = msg.sender
            sub_d151bfcd[address(msg.sender)].field_0 = msg.sender
            sub_d151bfcd[address(msg.sender)].field_256 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_512 = arg1
            sub_d151bfcd[address(msg.sender)].field_768 = 0
            sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
            sub_d151bfcd[address(msg.sender)].field_1280 = 0
            stor7[address(msg.sender)] = 0
            emit StakeSuccessful(arg1, block.timestamp, msg.sender);
            if stor12 + arg1 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg1
            return 1, arg1
        require arg1
        if arg1 * sub_a27f3fa6 / arg1 != sub_a27f3fa6:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2302 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2302] = 26
        mem[_2302 + 32] = 'SafeMath: division by zero'
        _2363 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2363] = 30
        mem[_2363 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * sub_a27f3fa6 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_237c3390 + (arg1 * sub_a27f3fa6 / 100) < sub_237c3390:
            revert with 0, 'SafeMath: addition overflow'
        sub_237c3390 += arg1 * sub_a27f3fa6 / 100
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, poolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 
                        32,
                        94,
                        0x2e596f7520686176652072656163682074686520746f6b656e20616c6c6f77616e636520746f207472616e7366657220746f20636f6e747261637420706f6f6c2e20506c6561736520617070726f766520616e642074727920616761696e,
                        mem[mem[64] + 162 len 2]
        _2634 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = poolAddress
        mem[mem[64] + 100] = arg1
        _2635 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_2634 + 132] = 32
        mem[_2634 + 164] = 'SafeERC20: low-level call failed'
        if ext_code.hash(stor2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor2):
            revert with 0, 'Address: call to non-contract'
        _2920 = mem[_2635]
        mem[_2634 + 196 len floor32(mem[_2635])] = mem[_2635 + 32 len floor32(mem[_2635])]
        mem[_2634 + floor32(mem[_2635]) + -(mem[_2635] % 32) + 228 len mem[_2635] % 32] = mem[_2635 + floor32(mem[_2635]) + -(mem[_2635] % 32) + 64 len mem[_2635] % 32]
        call stor2 with:
             gas gas_remaining wei
            args mem[_2634 + 200 len _2920 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2634 + 306 len 22]
        else:
            mem[_2634 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_2634 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2634 + ceil32(return_data.size) + 307 len 22]
    emit TransferSuccessful(arg1, msg.sender, poolAddress);
    if not _stakeholders.length:
        sub_b3e95b54 = block.timestamp
        if block.timestamp + sub_4d9ff3b5 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_1634404c = block.timestamp + sub_4d9ff3b5
    idx = 0
    while idx < _stakeholders.length:
        mem[0] = 3
        if _stakeholders[idx] != msg.sender:
            idx = idx + 1
            continue 
        sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
        if sub_d151bfcd[address(msg.sender)].field_512 + arg1 - (arg1 * sub_a27f3fa6 / 100) < sub_d151bfcd[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_d151bfcd[address(msg.sender)].field_512 = sub_d151bfcd[address(msg.sender)].field_512 + arg1 - (arg1 * sub_a27f3fa6 / 100)
        emit StakeSuccessful(arg1 - (arg1 * sub_a27f3fa6 / 100), block.timestamp, msg.sender);
        if stor12 + arg1 - (arg1 * sub_a27f3fa6 / 100) < stor12:
            revert with 0, 'SafeMath: addition overflow'
        stor12 = stor12 + arg1 - (arg1 * sub_a27f3fa6 / 100)
        return 1, arg1 - (arg1 * sub_a27f3fa6 / 100)
    _stakeholders.length++
    _stakeholders[_stakeholders.length] = msg.sender
    sub_d151bfcd[address(msg.sender)].field_0 = msg.sender
    sub_d151bfcd[address(msg.sender)].field_256 = block.timestamp
    sub_d151bfcd[address(msg.sender)].field_512 = arg1 - (arg1 * sub_a27f3fa6 / 100)
    sub_d151bfcd[address(msg.sender)].field_768 = 0
    sub_d151bfcd[address(msg.sender)].field_1024 = block.timestamp
    sub_d151bfcd[address(msg.sender)].field_1280 = 0
    stor7[address(msg.sender)] = 0
    emit StakeSuccessful(arg1 - (arg1 * sub_a27f3fa6 / 100), block.timestamp, msg.sender);
    if stor12 + arg1 - (arg1 * sub_a27f3fa6 / 100) < stor12:
        revert with 0, 'SafeMath: addition overflow'
    stor12 = stor12 + arg1 - (arg1 * sub_a27f3fa6 / 100)
    return 1, arg1 - (arg1 * sub_a27f3fa6 / 100)
}

function claimReward() payable {
    mem[64] = 96
    if msg.value < sub_e07bd415:
        revert with 0, 'Missing transaction fee.'
    if block.timestamp <= sub_40f233d8:
        revert with 0, 'Pool is not open yet.'
    if block.timestamp > sub_1634404c:
        idx = 0
        while idx < _stakeholders.length:
            if not sub_b3e95b54:
                require idx < _stakeholders.length
                stor7[stor3[idx]] = 0
            else:
                if not sub_d151bfcd[stor3[idx]].field_512:
                    require idx < _stakeholders.length
                    stor7[stor3[idx]] = 0
                else:
                    if not stor12:
                        require idx < _stakeholders.length
                        stor7[stor3[idx]] = 0
                    else:
                        mem[0] = _stakeholders[idx]
                        mem[32] = 4
                        if block.timestamp <= sub_1634404c:
                            _5731 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5731] = 30
                            mem[_5731 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > block.timestamp:
                                _5761 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_5761 + idx + 68] = mem[_5731 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5761 + 68] = mem[_5761 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _5761 + -mem[64] + 100
                            if not block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _5959 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5959] = 26
                                        mem[_5959 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _5999 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5999 + idx + 68] = mem[_5959 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5999 + 68] = mem[_5999 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5999 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5998 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5998] = 26
                                        mem[_5998 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6049 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6049 + idx + 68] = mem[_5998 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6049 + 68] = mem[_6049 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6049 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _5997 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5997] = 26
                                        mem[_5997 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6046 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6046 + idx + 68] = mem[_5997 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6046 + 68] = mem[_6046 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6046 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6045 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6045] = 26
                                        mem[_6045 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6135 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6135 + idx + 68] = mem[_6045 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6135 + 68] = mem[_6135 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6135 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
                        else:
                            _5732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5732] = 30
                            mem[_5732 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > sub_1634404c:
                                _5764 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_5764 + idx + 68] = mem[_5732 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5764 + 68] = mem[_5764 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _5764 + -mem[64] + 100
                            if not sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _5960 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5960] = 26
                                        mem[_5960 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6004 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6004 + idx + 68] = mem[_5960 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6004 + 68] = mem[_6004 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6004 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6003 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6003] = 26
                                        mem[_6003 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6057 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6057 + idx + 68] = mem[_6003 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6057 + 68] = mem[_6057 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6057 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _6002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6002] = 26
                                        mem[_6002 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6054 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6054 + idx + 68] = mem[_6002 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6054 + 68] = mem[_6054 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6054 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6053 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6053] = 26
                                        mem[_6053 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6141 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6141 + idx + 68] = mem[_6053 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6141 + 68] = mem[_6141 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6141 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
            mem[0] = _stakeholders[idx]
            mem[32] = 4
            sub_d151bfcd[stor3[idx]].field_1024 = sub_1634404c
            idx = idx + 1
            continue 
        if not sub_b3e95b54:
            return 1, 0
        if not sub_d151bfcd[address(msg.sender)].field_512:
            return 1, 0
        if not stor12:
            return 1, 0
        mem[0] = msg.sender
        mem[32] = 4
        if block.timestamp <= sub_1634404c:
            _5729 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5729] = 30
            mem[_5729 + 32] = 'SafeMath: subtraction overflow'
            if sub_d151bfcd[address(msg.sender)].field_1024 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)]:
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _5919 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)]
                    _5920 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_5919 + 100] = 32
                    mem[_5919 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _6186 = mem[_5920]
                    mem[_5919 + 164 len floor32(mem[_5920])] = mem[_5920 + 32 len floor32(mem[_5920])]
                    mem[_5919 + floor32(mem[_5920]) + -(mem[_5920] % 32) + 196 len mem[_5920] % 32] = mem[_5920 + -(mem[_5920] % 32) + floor32(mem[_5920]) + 64 len mem[_5920] % 32]
                    call stor6.mem[_5919 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5919 + 168 len _6186 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5919 + 274 len 22]
                    else:
                        mem[_5919 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5919 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5919 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)]:
                        _5955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5955] = 26
                        mem[_5955 + 32] = 'SafeMath: division by zero'
                        _6125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6125] = 30
                        mem[_6125 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] += stor7[address(msg.sender)]
                        _6668 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)]
                        _6669 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6668 + 100] = 32
                        mem[_6668 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7046 = mem[_6669]
                        mem[_6668 + 164 len floor32(mem[_6669])] = mem[_6669 + 32 len floor32(mem[_6669])]
                        mem[_6668 + floor32(mem[_6669]) + -(mem[_6669] % 32) + 196 len mem[_6669] % 32] = mem[_6669 + -(mem[_6669] % 32) + floor32(mem[_6669]) + 64 len mem[_6669] % 32]
                        call stor6.mem[_6668 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6668 + 168 len _7046 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6668 + 274 len 22]
                        else:
                            mem[_6668 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6668 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6668 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 += stor7[address(msg.sender)]
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)]
                        if stor7[address(msg.sender)] * _rewardClaimFee / stor7[address(msg.sender)] != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5990] = 26
                        mem[_5990 + 32] = 'SafeMath: division by zero'
                        _6262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6262] = 30
                        mem[_6262 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[address(msg.sender)] * _rewardClaimFee / 100 > stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] += stor7[address(msg.sender)]
                        _6817 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100)
                        _6818 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6817 + 100] = 32
                        mem[_6817 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7160 = mem[_6818]
                        mem[_6817 + 164 len floor32(mem[_6818])] = mem[_6818 + 32 len floor32(mem[_6818])]
                        mem[_6817 + floor32(mem[_6818]) + -(mem[_6818] % 32) + 196 len mem[_6818] % 32] = mem[_6818 + floor32(mem[_6818]) + -(mem[_6818] % 32) + 64 len mem[_6818] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_6817 + 168 len _7160 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6817 + 274 len 22]
                        else:
                            mem[_6817 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6817 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6817 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 += stor7[address(msg.sender)]
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)]
            if not sub_3dab98ff:
                mem[0] = msg.sender
                mem[32] = 4
                if not sub_d151bfcd[address(msg.sender)].field_512:
                    _5953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5953] = 26
                    mem[_5953 + 32] = 'SafeMath: division by zero'
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        return 1, 0
                    if _rewardClaimFee <= 0:
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _6719 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _6720 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6719 + 100] = 32
                        mem[_6719 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7086 = mem[_6720]
                        mem[_6719 + 164 len floor32(mem[_6720])] = mem[_6720 + 32 len floor32(mem[_6720])]
                        mem[_6719 + floor32(mem[_6720]) + -(mem[_6720] % 32) + 196 len mem[_6720] % 32] = mem[_6720 + -(mem[_6720] % 32) + floor32(mem[_6720]) + 64 len mem[_6720] % 32]
                        call stor6.mem[_6719 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6719 + 168 len _7086 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6719 + 274 len 22]
                        else:
                            mem[_6719 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6719 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6719 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        if not stor7[address(msg.sender)] + (0 / stor12):
                            _6812 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6812] = 26
                            mem[_6812 + 32] = 'SafeMath: division by zero'
                            _7040 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7040] = 30
                            mem[_7040 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _7807 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                            _7808 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_7807 + 100] = 32
                            mem[_7807 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _8778 = mem[_7808]
                            mem[_7807 + 164 len floor32(mem[_7808])] = mem[_7808 + 32 len floor32(mem[_7808])]
                            mem[_7807 + floor32(mem[_7808]) + -(mem[_7808] % 32) + 196 len mem[_7808] % 32] = mem[_7808 + floor32(mem[_7808]) + -(mem[_7808] % 32) + 64 len mem[_7808] % 32]
                            call stor6 with:
                                 gas gas_remaining wei
                                args mem[_7807 + 168 len _8778 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_7807 + 274 len 22]
                            else:
                                mem[_7807 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_7807 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_7807 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                        else:
                            require stor7[address(msg.sender)] + (0 / stor12)
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6934] = 26
                            mem[_6934 + 32] = 'SafeMath: division by zero'
                            _7155 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7155] = 30
                            mem[_7155 + 32] = 'SafeMath: subtraction overflow'
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8089 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                            _8090 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8089 + 100] = 32
                            mem[_8089 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _9000 = mem[_8090]
                            mem[_8089 + 164 len floor32(mem[_8090])] = mem[_8090 + 32 len floor32(mem[_8090])]
                            mem[_8089 + floor32(mem[_8090]) + -(mem[_8090] % 32) + 196 len mem[_8090] % 32] = mem[_8090 + -(mem[_8090] % 32) + floor32(mem[_8090]) + 64 len mem[_8090] % 32]
                            call stor6.mem[_8089 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8089 + 168 len _9000 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8089 + 274 len 22]
                            else:
                                mem[_8089 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8089 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8089 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                else:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _5986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5986] = 26
                    mem[_5986 + 32] = 'SafeMath: division by zero'
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        return 1, 0
                    if _rewardClaimFee <= 0:
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _6862 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _6863 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6862 + 100] = 32
                        mem[_6862 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7226 = mem[_6863]
                        mem[_6862 + 164 len floor32(mem[_6863])] = mem[_6863 + 32 len floor32(mem[_6863])]
                        mem[_6862 + floor32(mem[_6863]) + -(mem[_6863] % 32) + 196 len mem[_6863] % 32] = mem[_6863 + -(mem[_6863] % 32) + floor32(mem[_6863]) + 64 len mem[_6863] % 32]
                        call stor6.mem[_6862 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6862 + 168 len _7226 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6862 + 274 len 22]
                        else:
                            mem[_6862 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6862 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6862 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        if not stor7[address(msg.sender)] + (0 / stor12):
                            _6933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6933] = 26
                            mem[_6933 + 32] = 'SafeMath: division by zero'
                            _7154 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7154] = 30
                            mem[_7154 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8082 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                            _8083 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8082 + 100] = 32
                            mem[_8082 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _8996 = mem[_8083]
                            mem[_8082 + 164 len floor32(mem[_8083])] = mem[_8083 + 32 len floor32(mem[_8083])]
                            mem[_8082 + floor32(mem[_8083]) + -(mem[_8083] % 32) + 196 len mem[_8083] % 32] = mem[_8083 + -(mem[_8083] % 32) + floor32(mem[_8083]) + 64 len mem[_8083] % 32]
                            call stor6.mem[_8082 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8082 + 168 len _8996 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8082 + 274 len 22]
                            else:
                                mem[_8082 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8082 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8082 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                        else:
                            require stor7[address(msg.sender)] + (0 / stor12)
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6992] = 26
                            mem[_6992 + 32] = 'SafeMath: division by zero'
                            _7280 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7280] = 30
                            mem[_7280 + 32] = 'SafeMath: subtraction overflow'
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8377 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                            _8378 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8377 + 100] = 32
                            mem[_8377 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _9278 = mem[_8378]
                            mem[_8377 + 164 len floor32(mem[_8378])] = mem[_8378 + 32 len floor32(mem[_8378])]
                            mem[_8377 + floor32(mem[_8378]) + -(mem[_8378] % 32) + 196 len mem[_8378] % 32] = mem[_8378 + floor32(mem[_8378]) + -(mem[_8378] % 32) + 64 len mem[_8378] % 32]
                            call stor6 with:
                                 gas gas_remaining wei
                                args mem[_8377 + 168 len _9278 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8377 + 274 len 22]
                            else:
                                mem[_8377 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8377 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8377 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)] + (0 / stor12)
            require sub_3dab98ff
            if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = msg.sender
            mem[32] = 4
            if not sub_d151bfcd[address(msg.sender)].field_512:
                _5985 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5985] = 26
                mem[_5985 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6857 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6858 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6857 + 100] = 32
                    mem[_6857 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7222 = mem[_6858]
                    mem[_6857 + 164 len floor32(mem[_6858])] = mem[_6858 + 32 len floor32(mem[_6858])]
                    mem[_6857 + floor32(mem[_6858]) + -(mem[_6858] % 32) + 196 len mem[_6858] % 32] = mem[_6858 + -(mem[_6858] % 32) + floor32(mem[_6858]) + 64 len mem[_6858] % 32]
                    call stor6.mem[_6857 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6857 + 168 len _7222 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6857 + 274 len 22]
                    else:
                        mem[_6857 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6857 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6857 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6931] = 26
                        mem[_6931 + 32] = 'SafeMath: division by zero'
                        _7151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7151] = 30
                        mem[_7151 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8073 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _8074 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8073 + 100] = 32
                        mem[_8073 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _8988 = mem[_8074]
                        mem[_8073 + 164 len floor32(mem[_8074])] = mem[_8074 + 32 len floor32(mem[_8074])]
                        mem[_8073 + floor32(mem[_8074]) + -(mem[_8074] % 32) + 196 len mem[_8074] % 32] = mem[_8074 + floor32(mem[_8074]) + -(mem[_8074] % 32) + 64 len mem[_8074] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_8073 + 168 len _8988 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8073 + 274 len 22]
                        else:
                            mem[_8073 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8073 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8073 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6991] = 26
                        mem[_6991 + 32] = 'SafeMath: division by zero'
                        _7276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7276] = 30
                        mem[_7276 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8370 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8371 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8370 + 100] = 32
                        mem[_8370 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9270 = mem[_8371]
                        mem[_8370 + 164 len floor32(mem[_8371])] = mem[_8371 + 32 len floor32(mem[_8371])]
                        mem[_8370 + floor32(mem[_8371]) + -(mem[_8371] % 32) + 196 len mem[_8371] % 32] = mem[_8371 + -(mem[_8371] % 32) + floor32(mem[_8371]) + 64 len mem[_8371] % 32]
                        call stor6.mem[_8370 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8370 + 168 len _9270 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8370 + 274 len 22]
                        else:
                            mem[_8370 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8370 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8370 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)] + (0 / stor12)
            require sub_d151bfcd[address(msg.sender)].field_512
            if (block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _6029 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6029] = 26
            mem[_6029 + 32] = 'SafeMath: division by zero'
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _6953 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _6954 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6953 + 100] = 32
                mem[_6953 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _7370 = mem[_6954]
                mem[_6953 + 164 len floor32(mem[_6954])] = mem[_6954 + 32 len floor32(mem[_6954])]
                mem[_6953 + floor32(mem[_6954]) + -(mem[_6954] % 32) + 196 len mem[_6954] % 32] = mem[_6954 + -(mem[_6954] % 32) + floor32(mem[_6954]) + 64 len mem[_6954] % 32]
                call stor6.mem[_6953 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_6953 + 168 len _7370 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6953 + 274 len 22]
                else:
                    mem[_6953 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_6953 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6953 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    _6990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6990] = 26
                    mem[_6990 + 32] = 'SafeMath: division by zero'
                    _7275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7275] = 30
                    mem[_7275 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8363 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8364 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8363 + 100] = 32
                    mem[_8363 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9266 = mem[_8364]
                    mem[_8363 + 164 len floor32(mem[_8364])] = mem[_8364 + 32 len floor32(mem[_8364])]
                    mem[_8363 + floor32(mem[_8364]) + -(mem[_8364] % 32) + 196 len mem[_8364] % 32] = mem[_8364 + -(mem[_8364] % 32) + floor32(mem[_8364]) + 64 len mem[_8364] % 32]
                    call stor6.mem[_8363 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8363 + 168 len _9266 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8363 + 274 len 22]
                    else:
                        mem[_8363 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8363 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8363 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7037] = 26
                    mem[_7037 + 32] = 'SafeMath: division by zero'
                    _7445 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7445] = 30
                    mem[_7445 + 32] = 'SafeMath: subtraction overflow'
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8597 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100)
                    _8598 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8597 + 100] = 32
                    mem[_8597 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9474 = mem[_8598]
                    mem[_8597 + 164 len floor32(mem[_8598])] = mem[_8598 + 32 len floor32(mem[_8598])]
                    mem[_8597 + floor32(mem[_8598]) + -(mem[_8598] % 32) + 196 len mem[_8598] % 32] = mem[_8598 + floor32(mem[_8598]) + -(mem[_8598] % 32) + 64 len mem[_8598] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_8597 + 168 len _9474 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8597 + 274 len 22]
                    else:
                        mem[_8597 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8597 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8597 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, 
                   stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
        _5730 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5730] = 30
        mem[_5730 + 32] = 'SafeMath: subtraction overflow'
        if sub_d151bfcd[address(msg.sender)].field_1024 > sub_1634404c:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)]:
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] += stor7[address(msg.sender)]
                _5926 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)]
                _5927 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_5926 + 100] = 32
                mem[_5926 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _6198 = mem[_5927]
                mem[_5926 + 164 len floor32(mem[_5927])] = mem[_5927 + 32 len floor32(mem[_5927])]
                mem[_5926 + floor32(mem[_5927]) + -(mem[_5927] % 32) + 196 len mem[_5927] % 32] = mem[_5927 + floor32(mem[_5927]) + -(mem[_5927] % 32) + 64 len mem[_5927] % 32]
                call stor6 with:
                     gas gas_remaining wei
                    args mem[_5926 + 168 len _6198 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5926 + 274 len 22]
                else:
                    mem[_5926 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5926 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5926 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 += stor7[address(msg.sender)]
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)]:
                    _5958 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5958] = 26
                    mem[_5958 + 32] = 'SafeMath: division by zero'
                    _6134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6134] = 30
                    mem[_6134 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _6678 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)]
                    _6679 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6678 + 100] = 32
                    mem[_6678 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7058 = mem[_6679]
                    mem[_6678 + 164 len floor32(mem[_6679])] = mem[_6679 + 32 len floor32(mem[_6679])]
                    mem[_6678 + floor32(mem[_6679]) + -(mem[_6679] % 32) + 196 len mem[_6679] % 32] = mem[_6679 + floor32(mem[_6679]) + -(mem[_6679] % 32) + 64 len mem[_6679] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_6678 + 168 len _7058 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6678 + 274 len 22]
                    else:
                        mem[_6678 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6678 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6678 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)]
                    if stor7[address(msg.sender)] * _rewardClaimFee / stor7[address(msg.sender)] != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _5996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5996] = 26
                    mem[_5996 + 32] = 'SafeMath: division by zero'
                    _6271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6271] = 30
                    mem[_6271 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[address(msg.sender)] * _rewardClaimFee / 100 > stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _6828 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100)
                    _6829 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6828 + 100] = 32
                    mem[_6828 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7178 = mem[_6829]
                    mem[_6828 + 164 len floor32(mem[_6829])] = mem[_6829 + 32 len floor32(mem[_6829])]
                    mem[_6828 + floor32(mem[_6829]) + -(mem[_6829] % 32) + 196 len mem[_6829] % 32] = mem[_6829 + -(mem[_6829] % 32) + floor32(mem[_6829]) + 64 len mem[_6829] % 32]
                    call stor6.mem[_6828 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6828 + 168 len _7178 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6828 + 274 len 22]
                    else:
                        mem[_6828 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6828 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6828 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)]
        if not sub_3dab98ff:
            mem[0] = msg.sender
            mem[32] = 4
            if not sub_d151bfcd[address(msg.sender)].field_512:
                _5956 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5956] = 26
                mem[_5956 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6742 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6743 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6742 + 100] = 32
                    mem[_6742 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7102 = mem[_6743]
                    mem[_6742 + 164 len floor32(mem[_6743])] = mem[_6743 + 32 len floor32(mem[_6743])]
                    mem[_6742 + floor32(mem[_6743]) + -(mem[_6743] % 32) + 196 len mem[_6743] % 32] = mem[_6743 + floor32(mem[_6743]) + -(mem[_6743] % 32) + 64 len mem[_6743] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_6742 + 168 len _7102 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6742 + 274 len 22]
                    else:
                        mem[_6742 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6742 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6742 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6823] = 26
                        mem[_6823 + 32] = 'SafeMath: division by zero'
                        _7052 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7052] = 30
                        mem[_7052 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _7854 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _7855 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7854 + 100] = 32
                        mem[_7854 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _8808 = mem[_7855]
                        mem[_7854 + 164 len floor32(mem[_7855])] = mem[_7855 + 32 len floor32(mem[_7855])]
                        mem[_7854 + floor32(mem[_7855]) + -(mem[_7855] % 32) + 196 len mem[_7855] % 32] = mem[_7855 + floor32(mem[_7855]) + -(mem[_7855] % 32) + 64 len mem[_7855] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_7854 + 168 len _8808 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7854 + 274 len 22]
                        else:
                            mem[_7854 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_7854 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7854 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6940] = 26
                        mem[_6940 + 32] = 'SafeMath: division by zero'
                        _7173 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7173] = 30
                        mem[_7173 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8138 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8139 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8138 + 100] = 32
                        mem[_8138 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9040 = mem[_8139]
                        mem[_8138 + 164 len floor32(mem[_8139])] = mem[_8139 + 32 len floor32(mem[_8139])]
                        mem[_8138 + floor32(mem[_8139]) + -(mem[_8139] % 32) + 196 len mem[_8139] % 32] = mem[_8139 + -(mem[_8139] % 32) + floor32(mem[_8139]) + 64 len mem[_8139] % 32]
                        call stor6.mem[_8138 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8138 + 168 len _9040 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8138 + 274 len 22]
                        else:
                            mem[_8138 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8138 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8138 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            else:
                require sub_d151bfcd[address(msg.sender)].field_512
                if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _5992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5992] = 26
                mem[_5992 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6881 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6882 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6881 + 100] = 32
                    mem[_6881 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7239 = mem[_6882]
                    mem[_6881 + 164 len floor32(mem[_6882])] = mem[_6882 + 32 len floor32(mem[_6882])]
                    mem[_6881 + floor32(mem[_6882]) + -(mem[_6882] % 32) + 196 len mem[_6882] % 32] = mem[_6882 + -(mem[_6882] % 32) + floor32(mem[_6882]) + 64 len mem[_6882] % 32]
                    call stor6.mem[_6881 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6881 + 168 len _7239 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6881 + 274 len 22]
                    else:
                        mem[_6881 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6881 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6881 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6939] = 26
                        mem[_6939 + 32] = 'SafeMath: division by zero'
                        _7172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7172] = 30
                        mem[_7172 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8131 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _8132 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8131 + 100] = 32
                        mem[_8131 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9036 = mem[_8132]
                        mem[_8131 + 164 len floor32(mem[_8132])] = mem[_8132 + 32 len floor32(mem[_8132])]
                        mem[_8131 + floor32(mem[_8132]) + -(mem[_8132] % 32) + 196 len mem[_8132] % 32] = mem[_8132 + -(mem[_8132] % 32) + floor32(mem[_8132]) + 64 len mem[_8132] % 32]
                        call stor6.mem[_8131 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8131 + 168 len _9036 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8131 + 274 len 22]
                        else:
                            mem[_8131 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8131 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8131 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _7002 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7002] = 26
                        mem[_7002 + 32] = 'SafeMath: division by zero'
                        _7304 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7304] = 30
                        mem[_7304 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8408 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8409 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8408 + 100] = 32
                        mem[_8408 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9310 = mem[_8409]
                        mem[_8408 + 164 len floor32(mem[_8409])] = mem[_8409 + 32 len floor32(mem[_8409])]
                        mem[_8408 + floor32(mem[_8409]) + -(mem[_8409] % 32) + 196 len mem[_8409] % 32] = mem[_8409 + -(mem[_8409] % 32) + floor32(mem[_8409]) + 64 len mem[_8409] % 32]
                        call stor6.mem[_8408 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8408 + 168 len _9310 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8408 + 274 len 22]
                        else:
                            mem[_8408 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8408 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8408 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)] + (0 / stor12)
        require sub_3dab98ff
        if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        mem[0] = msg.sender
        mem[32] = 4
        if not sub_d151bfcd[address(msg.sender)].field_512:
            _5991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5991] = 26
            mem[_5991 + 32] = 'SafeMath: division by zero'
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)] + (0 / stor12):
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                _6876 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                _6877 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6876 + 100] = 32
                mem[_6876 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _7235 = mem[_6877]
                mem[_6876 + 164 len floor32(mem[_6877])] = mem[_6877 + 32 len floor32(mem[_6877])]
                mem[_6876 + floor32(mem[_6877]) + -(mem[_6877] % 32) + 196 len mem[_6877] % 32] = mem[_6877 + -(mem[_6877] % 32) + floor32(mem[_6877]) + 64 len mem[_6877] % 32]
                call stor6.mem[_6876 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_6876 + 168 len _7235 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6876 + 274 len 22]
                else:
                    mem[_6876 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_6876 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6876 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)] + (0 / stor12):
                    _6937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6937] = 26
                    mem[_6937 + 32] = 'SafeMath: division by zero'
                    _7169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7169] = 30
                    mem[_7169 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)] + (0 / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _8122 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _8123 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8122 + 100] = 32
                    mem[_8122 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9028 = mem[_8123]
                    mem[_8122 + 164 len floor32(mem[_8123])] = mem[_8123 + 32 len floor32(mem[_8123])]
                    mem[_8122 + floor32(mem[_8123]) + -(mem[_8123] % 32) + 196 len mem[_8123] % 32] = mem[_8123 + floor32(mem[_8123]) + -(mem[_8123] % 32) + 64 len mem[_8123] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_8122 + 168 len _9028 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8122 + 274 len 22]
                    else:
                        mem[_8122 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8122 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8122 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)] + (0 / stor12)
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7001 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7001] = 26
                    mem[_7001 + 32] = 'SafeMath: division by zero'
                    _7300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7300] = 30
                    mem[_7300 + 32] = 'SafeMath: subtraction overflow'
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _8401 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                    _8402 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8401 + 100] = 32
                    mem[_8401 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9302 = mem[_8402]
                    mem[_8401 + 164 len floor32(mem[_8402])] = mem[_8402 + 32 len floor32(mem[_8402])]
                    mem[_8401 + floor32(mem[_8402]) + -(mem[_8402] % 32) + 196 len mem[_8402] % 32] = mem[_8402 + floor32(mem[_8402]) + -(mem[_8402] % 32) + 64 len mem[_8402] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_8401 + 168 len _9302 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8401 + 274 len 22]
                    else:
                        mem[_8401 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8401 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8401 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)] + (0 / stor12)
        require sub_d151bfcd[address(msg.sender)].field_512
        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _6037 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6037] = 26
        mem[_6037 + 32] = 'SafeMath: division by zero'
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 8
        if not stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
            return 1, 0
        if _rewardClaimFee <= 0:
            stor7[address(msg.sender)] = 0
            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            _6962 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            _6963 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_6962 + 100] = 32
            mem[_6962 + 132] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor6):
                revert with 0, 'Address: call to non-contract'
            _7389 = mem[_6963]
            mem[_6962 + 164 len floor32(mem[_6963])] = mem[_6963 + 32 len floor32(mem[_6963])]
            mem[_6962 + floor32(mem[_6963]) + -(mem[_6963] % 32) + 196 len mem[_6963] % 32] = mem[_6963 + floor32(mem[_6963]) + -(mem[_6963] % 32) + 64 len mem[_6963] % 32]
            call stor6 with:
                 gas gas_remaining wei
                args mem[_6962 + 168 len _7389 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_6962 + 274 len 22]
            else:
                mem[_6962 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_6962 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_6962 + ceil32(return_data.size) + 275 len 22]
            if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                revert with 0, 'SafeMath: addition overflow'
            stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
            emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
        else:
            if not stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                _7000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7000] = 26
                mem[_7000 + 32] = 'SafeMath: division by zero'
                _7299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7299] = 30
                mem[_7299 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8394 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8395 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_8394 + 100] = 32
                mem[_8394 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _9298 = mem[_8395]
                mem[_8394 + 164 len floor32(mem[_8395])] = mem[_8395 + 32 len floor32(mem[_8395])]
                mem[_8394 + floor32(mem[_8395]) + -(mem[_8395] % 32) + 196 len mem[_8395] % 32] = mem[_8395 + floor32(mem[_8395]) + -(mem[_8395] % 32) + 64 len mem[_8395] % 32]
                call stor6 with:
                     gas gas_remaining wei
                    args mem[_8394 + 168 len _9298 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8394 + 274 len 22]
                else:
                    mem[_8394 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_8394 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8394 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
            else:
                require stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                if (stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) != _rewardClaimFee:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _7049 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7049] = 26
                mem[_7049 + 32] = 'SafeMath: division by zero'
                _7471 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7471] = 30
                mem[_7471 + 32] = 'SafeMath: subtraction overflow'
                if (stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8614 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100)
                _8615 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_8614 + 100] = 32
                mem[_8614 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _9506 = mem[_8615]
                mem[_8614 + 164 len floor32(mem[_8615])] = mem[_8615 + 32 len floor32(mem[_8615])]
                mem[_8614 + floor32(mem[_8615]) + -(mem[_8615] % 32) + 196 len mem[_8615] % 32] = mem[_8615 + -(mem[_8615] % 32) + floor32(mem[_8615]) + 64 len mem[_8615] % 32]
                call stor6.mem[_8614 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_8614 + 168 len _9506 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8614 + 274 len 22]
                else:
                    mem[_8614 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_8614 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8614 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
    else:
        idx = 0
        while idx < _stakeholders.length:
            if not sub_b3e95b54:
                require idx < _stakeholders.length
                stor7[stor3[idx]] = 0
            else:
                if not sub_d151bfcd[stor3[idx]].field_512:
                    require idx < _stakeholders.length
                    stor7[stor3[idx]] = 0
                else:
                    if not stor12:
                        require idx < _stakeholders.length
                        stor7[stor3[idx]] = 0
                    else:
                        mem[0] = _stakeholders[idx]
                        mem[32] = 4
                        if block.timestamp <= sub_1634404c:
                            _5739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5739] = 30
                            mem[_5739 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > block.timestamp:
                                _5775 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_5775 + idx + 68] = mem[_5739 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5775 + 68] = mem[_5775 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _5775 + -mem[64] + 100
                            if not block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _5967 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5967] = 26
                                        mem[_5967 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6021 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6021 + idx + 68] = mem[_5967 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6021 + 68] = mem[_6021 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6021 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6020 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6020] = 26
                                        mem[_6020 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6081 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6081 + idx + 68] = mem[_6020 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6081 + 68] = mem[_6081 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6081 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _6019 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6019] = 26
                                        mem[_6019 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6078 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6078 + idx + 68] = mem[_6019 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6078 + 68] = mem[_6078 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6078 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6077 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6077] = 26
                                        mem[_6077 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6165 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6165 + idx + 68] = mem[_6077 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6165 + 68] = mem[_6165 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6165 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (block.timestamp * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
                        else:
                            _5740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5740] = 30
                            mem[_5740 + 32] = 'SafeMath: subtraction overflow'
                            if sub_d151bfcd[stor3[idx]].field_1024 > sub_1634404c:
                                _5778 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_5778 + idx + 68] = mem[_5740 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5778 + 68] = mem[_5778 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _5778 + -mem[64] + 100
                            if not sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                require idx < _stakeholders.length
                            else:
                                if not sub_3dab98ff:
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _5968 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5968] = 26
                                        mem[_5968 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6026 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6026 + idx + 68] = mem[_5968 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6026 + 68] = mem[_6026 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6026 + -mem[64] + 100
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if 0 / sub_d151bfcd[stor3[idx]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6025 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6025] = 26
                                        mem[_6025 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6089 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6089 + idx + 68] = mem[_6025 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6089 + 68] = mem[_6089 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6089 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'stor12', 12)), 0)
                                    require stor12
                                    if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < _stakeholders.length
                                    stor7[stor3[idx]] += 0 / stor12
                                else:
                                    require sub_3dab98ff
                                    if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[stor3[idx]].field_1024:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = _stakeholders[idx]
                                    mem[32] = 4
                                    if not sub_d151bfcd[stor3[idx]].field_512:
                                        _6024 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6024] = 26
                                        mem[_6024 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6086 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6086 + idx + 68] = mem[_6024 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6086 + 68] = mem[_6086 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6086 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + (0 / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += 0 / stor12
                                    else:
                                        require sub_d151bfcd[stor3[idx]].field_512
                                        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / sub_d151bfcd[stor3[idx]].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff):
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6085 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6085] = 26
                                        mem[_6085 + 32] = 'SafeMath: division by zero'
                                        if stor12 <= 0:
                                            _6171 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_6171 + idx + 68] = mem[_6085 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_6171 + 68] = mem[_6171 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _6171 + -mem[64] + 100
                                        require stor12
                                        if stor7[stor3[idx]] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12) < stor7[stor3[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < _stakeholders.length
                                        stor7[stor3[idx]] += (sub_1634404c * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) - (sub_d151bfcd[stor3[idx]].field_1024 * sub_3dab98ff * sub_d151bfcd[stor3[idx]].field_512) / stor12
            mem[0] = _stakeholders[idx]
            mem[32] = 4
            sub_d151bfcd[stor3[idx]].field_1024 = block.timestamp
            idx = idx + 1
            continue 
        if not sub_b3e95b54:
            return 1, 0
        if not sub_d151bfcd[address(msg.sender)].field_512:
            return 1, 0
        if not stor12:
            return 1, 0
        mem[0] = msg.sender
        mem[32] = 4
        if block.timestamp <= sub_1634404c:
            _5737 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5737] = 30
            mem[_5737 + 32] = 'SafeMath: subtraction overflow'
            if sub_d151bfcd[address(msg.sender)].field_1024 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)]:
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _5937 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)]
                    _5938 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_5937 + 100] = 32
                    mem[_5937 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _6226 = mem[_5938]
                    mem[_5937 + 164 len floor32(mem[_5938])] = mem[_5938 + 32 len floor32(mem[_5938])]
                    mem[_5937 + floor32(mem[_5938]) + -(mem[_5938] % 32) + 196 len mem[_5938] % 32] = mem[_5938 + -(mem[_5938] % 32) + floor32(mem[_5938]) + 64 len mem[_5938] % 32]
                    call stor6.mem[_5937 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5937 + 168 len _6226 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5937 + 274 len 22]
                    else:
                        mem[_5937 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5937 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5937 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)]:
                        _5963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5963] = 26
                        mem[_5963 + 32] = 'SafeMath: division by zero'
                        _6155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6155] = 30
                        mem[_6155 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] += stor7[address(msg.sender)]
                        _6692 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)]
                        _6693 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6692 + 100] = 32
                        mem[_6692 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7070 = mem[_6693]
                        mem[_6692 + 164 len floor32(mem[_6693])] = mem[_6693 + 32 len floor32(mem[_6693])]
                        mem[_6692 + floor32(mem[_6693]) + -(mem[_6693] % 32) + 196 len mem[_6693] % 32] = mem[_6693 + floor32(mem[_6693]) + -(mem[_6693] % 32) + 64 len mem[_6693] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_6692 + 168 len _7070 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6692 + 274 len 22]
                        else:
                            mem[_6692 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6692 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6692 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 += stor7[address(msg.sender)]
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)]
                        if stor7[address(msg.sender)] * _rewardClaimFee / stor7[address(msg.sender)] != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6012] = 26
                        mem[_6012 + 32] = 'SafeMath: division by zero'
                        _6290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6290] = 30
                        mem[_6290 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[address(msg.sender)] * _rewardClaimFee / 100 > stor7[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] += stor7[address(msg.sender)]
                        _6839 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100)
                        _6840 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6839 + 100] = 32
                        mem[_6839 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7196 = mem[_6840]
                        mem[_6839 + 164 len floor32(mem[_6840])] = mem[_6840 + 32 len floor32(mem[_6840])]
                        mem[_6839 + floor32(mem[_6840]) + -(mem[_6840] % 32) + 196 len mem[_6840] % 32] = mem[_6840 + -(mem[_6840] % 32) + floor32(mem[_6840]) + 64 len mem[_6840] % 32]
                        call stor6.mem[_6839 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6839 + 168 len _7196 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6839 + 274 len 22]
                        else:
                            mem[_6839 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6839 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6839 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 += stor7[address(msg.sender)]
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)]
            if not sub_3dab98ff:
                mem[0] = msg.sender
                mem[32] = 4
                if not sub_d151bfcd[address(msg.sender)].field_512:
                    _5961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5961] = 26
                    mem[_5961 + 32] = 'SafeMath: division by zero'
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        return 1, 0
                    if _rewardClaimFee <= 0:
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _6769 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _6770 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6769 + 100] = 32
                        mem[_6769 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7118 = mem[_6770]
                        mem[_6769 + 164 len floor32(mem[_6770])] = mem[_6770 + 32 len floor32(mem[_6770])]
                        mem[_6769 + floor32(mem[_6770]) + -(mem[_6770] % 32) + 196 len mem[_6770] % 32] = mem[_6770 + floor32(mem[_6770]) + -(mem[_6770] % 32) + 64 len mem[_6770] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_6769 + 168 len _7118 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6769 + 274 len 22]
                        else:
                            mem[_6769 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6769 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6769 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        if not stor7[address(msg.sender)] + (0 / stor12):
                            _6834 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6834] = 26
                            mem[_6834 + 32] = 'SafeMath: division by zero'
                            _7064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7064] = 30
                            mem[_7064 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _7901 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                            _7902 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_7901 + 100] = 32
                            mem[_7901 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _8838 = mem[_7902]
                            mem[_7901 + 164 len floor32(mem[_7902])] = mem[_7902 + 32 len floor32(mem[_7902])]
                            mem[_7901 + floor32(mem[_7902]) + -(mem[_7902] % 32) + 196 len mem[_7902] % 32] = mem[_7902 + -(mem[_7902] % 32) + floor32(mem[_7902]) + 64 len mem[_7902] % 32]
                            call stor6.mem[_7901 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7901 + 168 len _8838 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_7901 + 274 len 22]
                            else:
                                mem[_7901 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_7901 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_7901 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                        else:
                            require stor7[address(msg.sender)] + (0 / stor12)
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6946] = 26
                            mem[_6946 + 32] = 'SafeMath: division by zero'
                            _7191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7191] = 30
                            mem[_7191 + 32] = 'SafeMath: subtraction overflow'
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8187 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                            _8188 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8187 + 100] = 32
                            mem[_8187 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _9080 = mem[_8188]
                            mem[_8187 + 164 len floor32(mem[_8188])] = mem[_8188 + 32 len floor32(mem[_8188])]
                            mem[_8187 + floor32(mem[_8188]) + -(mem[_8188] % 32) + 196 len mem[_8188] % 32] = mem[_8188 + floor32(mem[_8188]) + -(mem[_8188] % 32) + 64 len mem[_8188] % 32]
                            call stor6 with:
                                 gas gas_remaining wei
                                args mem[_8187 + 168 len _9080 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8187 + 274 len 22]
                            else:
                                mem[_8187 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8187 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8187 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                else:
                    require sub_d151bfcd[address(msg.sender)].field_512
                    if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6008] = 26
                    mem[_6008 + 32] = 'SafeMath: division by zero'
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        return 1, 0
                    if _rewardClaimFee <= 0:
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _6900 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _6901 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_6900 + 100] = 32
                        mem[_6900 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _7252 = mem[_6901]
                        mem[_6900 + 164 len floor32(mem[_6901])] = mem[_6901 + 32 len floor32(mem[_6901])]
                        mem[_6900 + floor32(mem[_6901]) + -(mem[_6901] % 32) + 196 len mem[_6901] % 32] = mem[_6901 + -(mem[_6901] % 32) + floor32(mem[_6901]) + 64 len mem[_6901] % 32]
                        call stor6.mem[_6900 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_6900 + 168 len _7252 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6900 + 274 len 22]
                        else:
                            mem[_6900 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_6900 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_6900 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        if not stor7[address(msg.sender)] + (0 / stor12):
                            _6945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6945] = 26
                            mem[_6945 + 32] = 'SafeMath: division by zero'
                            _7190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7190] = 30
                            mem[_7190 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8180 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                            _8181 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8180 + 100] = 32
                            mem[_8180 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _9076 = mem[_8181]
                            mem[_8180 + 164 len floor32(mem[_8181])] = mem[_8181 + 32 len floor32(mem[_8181])]
                            mem[_8180 + floor32(mem[_8181]) + -(mem[_8181] % 32) + 196 len mem[_8181] % 32] = mem[_8181 + floor32(mem[_8181]) + -(mem[_8181] % 32) + 64 len mem[_8181] % 32]
                            call stor6 with:
                                 gas gas_remaining wei
                                args mem[_8180 + 168 len _9076 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8180 + 274 len 22]
                            else:
                                mem[_8180 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8180 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8180 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                        else:
                            require stor7[address(msg.sender)] + (0 / stor12)
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _7012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7012] = 26
                            mem[_7012 + 32] = 'SafeMath: division by zero'
                            _7328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7328] = 30
                            mem[_7328 + 32] = 'SafeMath: subtraction overflow'
                            if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor7[address(msg.sender)] = 0
                            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 8
                            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                            _8439 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                            _8440 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                            mem[64] = mem[64] + 164
                            mem[_8439 + 100] = 32
                            mem[_8439 + 132] = 'SafeERC20: low-level call failed'
                            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(stor6):
                                revert with 0, 'Address: call to non-contract'
                            _9342 = mem[_8440]
                            mem[_8439 + 164 len floor32(mem[_8440])] = mem[_8440 + 32 len floor32(mem[_8440])]
                            mem[_8439 + floor32(mem[_8440]) + -(mem[_8440] % 32) + 196 len mem[_8440] % 32] = mem[_8440 + floor32(mem[_8440]) + -(mem[_8440] % 32) + 64 len mem[_8440] % 32]
                            call stor6 with:
                                 gas gas_remaining wei
                                args mem[_8439 + 168 len _9342 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8439 + 274 len 22]
                            else:
                                mem[_8439 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_8439 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_8439 + ceil32(return_data.size) + 275 len 22]
                            if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                                revert with 0, 'SafeMath: addition overflow'
                            stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                            emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)] + (0 / stor12)
            require sub_3dab98ff
            if (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != block.timestamp - sub_d151bfcd[address(msg.sender)].field_1024:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = msg.sender
            mem[32] = 4
            if not sub_d151bfcd[address(msg.sender)].field_512:
                _6007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6007] = 26
                mem[_6007 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6895 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6896 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6895 + 100] = 32
                    mem[_6895 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7248 = mem[_6896]
                    mem[_6895 + 164 len floor32(mem[_6896])] = mem[_6896 + 32 len floor32(mem[_6896])]
                    mem[_6895 + floor32(mem[_6896]) + -(mem[_6896] % 32) + 196 len mem[_6896] % 32] = mem[_6896 + -(mem[_6896] % 32) + floor32(mem[_6896]) + 64 len mem[_6896] % 32]
                    call stor6.mem[_6895 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6895 + 168 len _7248 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6895 + 274 len 22]
                    else:
                        mem[_6895 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6895 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6895 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6943] = 26
                        mem[_6943 + 32] = 'SafeMath: division by zero'
                        _7187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7187] = 30
                        mem[_7187 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8171 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _8172 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8171 + 100] = 32
                        mem[_8171 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9068 = mem[_8172]
                        mem[_8171 + 164 len floor32(mem[_8172])] = mem[_8172 + 32 len floor32(mem[_8172])]
                        mem[_8171 + floor32(mem[_8172]) + -(mem[_8172] % 32) + 196 len mem[_8172] % 32] = mem[_8172 + floor32(mem[_8172]) + -(mem[_8172] % 32) + 64 len mem[_8172] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_8171 + 168 len _9068 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8171 + 274 len 22]
                        else:
                            mem[_8171 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8171 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8171 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _7011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7011] = 26
                        mem[_7011 + 32] = 'SafeMath: division by zero'
                        _7324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7324] = 30
                        mem[_7324 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8432 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8433 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8432 + 100] = 32
                        mem[_8432 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9334 = mem[_8433]
                        mem[_8432 + 164 len floor32(mem[_8433])] = mem[_8433 + 32 len floor32(mem[_8433])]
                        mem[_8432 + floor32(mem[_8433]) + -(mem[_8433] % 32) + 196 len mem[_8433] % 32] = mem[_8433 + -(mem[_8433] % 32) + floor32(mem[_8433]) + 64 len mem[_8433] % 32]
                        call stor6.mem[_8432 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8432 + 168 len _9334 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8432 + 274 len 22]
                        else:
                            mem[_8432 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8432 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8432 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
                return 1, stor7[address(msg.sender)] + (0 / stor12)
            require sub_d151bfcd[address(msg.sender)].field_512
            if (block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (block.timestamp * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _6061 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6061] = 26
            mem[_6061 + 32] = 'SafeMath: division by zero'
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _6971 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _6972 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6971 + 100] = 32
                mem[_6971 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _7408 = mem[_6972]
                mem[_6971 + 164 len floor32(mem[_6972])] = mem[_6972 + 32 len floor32(mem[_6972])]
                mem[_6971 + floor32(mem[_6972]) + -(mem[_6972] % 32) + 196 len mem[_6972] % 32] = mem[_6972 + floor32(mem[_6972]) + -(mem[_6972] % 32) + 64 len mem[_6972] % 32]
                call stor6 with:
                     gas gas_remaining wei
                    args mem[_6971 + 168 len _7408 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6971 + 274 len 22]
                else:
                    mem[_6971 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_6971 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6971 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    _7010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7010] = 26
                    mem[_7010 + 32] = 'SafeMath: division by zero'
                    _7323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7323] = 30
                    mem[_7323 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8425 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8426 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8425 + 100] = 32
                    mem[_8425 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9330 = mem[_8426]
                    mem[_8425 + 164 len floor32(mem[_8426])] = mem[_8426 + 32 len floor32(mem[_8426])]
                    mem[_8425 + floor32(mem[_8426]) + -(mem[_8426] % 32) + 196 len mem[_8426] % 32] = mem[_8426 + -(mem[_8426] % 32) + floor32(mem[_8426]) + 64 len mem[_8426] % 32]
                    call stor6.mem[_8425 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8425 + 168 len _9330 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8425 + 274 len 22]
                    else:
                        mem[_8425 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8425 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8425 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7061] = 26
                    mem[_7061 + 32] = 'SafeMath: division by zero'
                    _7497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7497] = 30
                    mem[_7497 + 32] = 'SafeMath: subtraction overflow'
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    _8631 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100)
                    _8632 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8631 + 100] = 32
                    mem[_8631 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9538 = mem[_8632]
                    mem[_8631 + 164 len floor32(mem[_8632])] = mem[_8632 + 32 len floor32(mem[_8632])]
                    mem[_8631 + floor32(mem[_8632]) + -(mem[_8632] % 32) + 196 len mem[_8632] % 32] = mem[_8632 + -(mem[_8632] % 32) + floor32(mem[_8632]) + 64 len mem[_8632] % 32]
                    call stor6.mem[_8631 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8631 + 168 len _9538 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8631 + 274 len 22]
                    else:
                        mem[_8631 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8631 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8631 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, 
                   stor7[address(msg.sender)] + ((block.timestamp * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
        _5738 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5738] = 30
        mem[_5738 + 32] = 'SafeMath: subtraction overflow'
        if sub_d151bfcd[address(msg.sender)].field_1024 > sub_1634404c:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)]:
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] += stor7[address(msg.sender)]
                _5944 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)]
                _5945 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_5944 + 100] = 32
                mem[_5944 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _6238 = mem[_5945]
                mem[_5944 + 164 len floor32(mem[_5945])] = mem[_5945 + 32 len floor32(mem[_5945])]
                mem[_5944 + floor32(mem[_5945]) + -(mem[_5945] % 32) + 196 len mem[_5945] % 32] = mem[_5945 + -(mem[_5945] % 32) + floor32(mem[_5945]) + 64 len mem[_5945] % 32]
                call stor6.mem[_5944 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_5944 + 168 len _6238 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5944 + 274 len 22]
                else:
                    mem[_5944 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5944 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5944 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 += stor7[address(msg.sender)]
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)]:
                    _5966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5966] = 26
                    mem[_5966 + 32] = 'SafeMath: division by zero'
                    _6164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6164] = 30
                    mem[_6164 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _6702 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)]
                    _6703 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6702 + 100] = 32
                    mem[_6702 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7082 = mem[_6703]
                    mem[_6702 + 164 len floor32(mem[_6703])] = mem[_6703 + 32 len floor32(mem[_6703])]
                    mem[_6702 + floor32(mem[_6703]) + -(mem[_6703] % 32) + 196 len mem[_6703] % 32] = mem[_6703 + floor32(mem[_6703]) + -(mem[_6703] % 32) + 64 len mem[_6703] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_6702 + 168 len _7082 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6702 + 274 len 22]
                    else:
                        mem[_6702 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6702 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6702 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)], block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)]
                    if stor7[address(msg.sender)] * _rewardClaimFee / stor7[address(msg.sender)] != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6018] = 26
                    mem[_6018 + 32] = 'SafeMath: division by zero'
                    _6299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6299] = 30
                    mem[_6299 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[address(msg.sender)] * _rewardClaimFee / 100 > stor7[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] += stor7[address(msg.sender)]
                    _6850 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100)
                    _6851 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6850 + 100] = 32
                    mem[_6850 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7214 = mem[_6851]
                    mem[_6850 + 164 len floor32(mem[_6851])] = mem[_6851 + 32 len floor32(mem[_6851])]
                    mem[_6850 + floor32(mem[_6851]) + -(mem[_6851] % 32) + 196 len mem[_6851] % 32] = mem[_6851 + -(mem[_6851] % 32) + floor32(mem[_6851]) + 64 len mem[_6851] % 32]
                    call stor6.mem[_6850 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6850 + 168 len _7214 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6850 + 274 len 22]
                    else:
                        mem[_6850 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6850 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6850 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 += stor7[address(msg.sender)]
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] - (stor7[address(msg.sender)] * _rewardClaimFee / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)]
        if not sub_3dab98ff:
            mem[0] = msg.sender
            mem[32] = 4
            if not sub_d151bfcd[address(msg.sender)].field_512:
                _5964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5964] = 26
                mem[_5964 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6792 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6793 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6792 + 100] = 32
                    mem[_6792 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7134 = mem[_6793]
                    mem[_6792 + 164 len floor32(mem[_6793])] = mem[_6793 + 32 len floor32(mem[_6793])]
                    mem[_6792 + floor32(mem[_6793]) + -(mem[_6793] % 32) + 196 len mem[_6793] % 32] = mem[_6793 + floor32(mem[_6793]) + -(mem[_6793] % 32) + 64 len mem[_6793] % 32]
                    call stor6 with:
                         gas gas_remaining wei
                        args mem[_6792 + 168 len _7134 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6792 + 274 len 22]
                    else:
                        mem[_6792 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6792 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6792 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6845] = 26
                        mem[_6845 + 32] = 'SafeMath: division by zero'
                        _7076 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7076] = 30
                        mem[_7076 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _7948 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _7949 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_7948 + 100] = 32
                        mem[_7948 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _8868 = mem[_7949]
                        mem[_7948 + 164 len floor32(mem[_7949])] = mem[_7949 + 32 len floor32(mem[_7949])]
                        mem[_7948 + floor32(mem[_7949]) + -(mem[_7949] % 32) + 196 len mem[_7949] % 32] = mem[_7949 + -(mem[_7949] % 32) + floor32(mem[_7949]) + 64 len mem[_7949] % 32]
                        call stor6.mem[_7948 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_7948 + 168 len _8868 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7948 + 274 len 22]
                        else:
                            mem[_7948 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_7948 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_7948 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6952] = 26
                        mem[_6952 + 32] = 'SafeMath: division by zero'
                        _7209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7209] = 30
                        mem[_7209 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8236 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8237 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8236 + 100] = 32
                        mem[_8236 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9120 = mem[_8237]
                        mem[_8236 + 164 len floor32(mem[_8237])] = mem[_8237 + 32 len floor32(mem[_8237])]
                        mem[_8236 + floor32(mem[_8237]) + -(mem[_8237] % 32) + 196 len mem[_8237] % 32] = mem[_8237 + floor32(mem[_8237]) + -(mem[_8237] % 32) + 64 len mem[_8237] % 32]
                        call stor6 with:
                             gas gas_remaining wei
                            args mem[_8236 + 168 len _9120 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8236 + 274 len 22]
                        else:
                            mem[_8236 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8236 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8236 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            else:
                require sub_d151bfcd[address(msg.sender)].field_512
                if 0 / sub_d151bfcd[address(msg.sender)].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _6014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6014] = 26
                mem[_6014 + 32] = 'SafeMath: division by zero'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                if not stor7[address(msg.sender)] + (0 / stor12):
                    return 1, 0
                if _rewardClaimFee <= 0:
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _6919 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _6920 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_6919 + 100] = 32
                    mem[_6919 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _7265 = mem[_6920]
                    mem[_6919 + 164 len floor32(mem[_6920])] = mem[_6920 + 32 len floor32(mem[_6920])]
                    mem[_6919 + floor32(mem[_6920]) + -(mem[_6920] % 32) + 196 len mem[_6920] % 32] = mem[_6920 + -(mem[_6920] % 32) + floor32(mem[_6920]) + 64 len mem[_6920] % 32]
                    call stor6.mem[_6919 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6919 + 168 len _7265 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6919 + 274 len 22]
                    else:
                        mem[_6919 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_6919 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_6919 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    if not stor7[address(msg.sender)] + (0 / stor12):
                        _6951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6951] = 26
                        mem[_6951 + 32] = 'SafeMath: division by zero'
                        _7208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7208] = 30
                        mem[_7208 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8229 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                        _8230 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8229 + 100] = 32
                        mem[_8229 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9116 = mem[_8230]
                        mem[_8229 + 164 len floor32(mem[_8230])] = mem[_8230 + 32 len floor32(mem[_8230])]
                        mem[_8229 + floor32(mem[_8230]) + -(mem[_8230] % 32) + 196 len mem[_8230] % 32] = mem[_8230 + -(mem[_8230] % 32) + floor32(mem[_8230]) + 64 len mem[_8230] % 32]
                        call stor6.mem[_8229 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8229 + 168 len _9116 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8229 + 274 len 22]
                        else:
                            mem[_8229 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8229 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8229 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                    else:
                        require stor7[address(msg.sender)] + (0 / stor12)
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _7022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7022] = 26
                        mem[_7022 + 32] = 'SafeMath: division by zero'
                        _7352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7352] = 30
                        mem[_7352 + 32] = 'SafeMath: subtraction overflow'
                        if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor7[address(msg.sender)] = 0
                        if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 8
                        stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                        _8470 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                        _8471 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_8470 + 100] = 32
                        mem[_8470 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor6):
                            revert with 0, 'Address: call to non-contract'
                        _9374 = mem[_8471]
                        mem[_8470 + 164 len floor32(mem[_8471])] = mem[_8471 + 32 len floor32(mem[_8471])]
                        mem[_8470 + floor32(mem[_8471]) + -(mem[_8471] % 32) + 196 len mem[_8471] % 32] = mem[_8471 + -(mem[_8471] % 32) + floor32(mem[_8471]) + 64 len mem[_8471] % 32]
                        call stor6.mem[_8470 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_8470 + 168 len _9374 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8470 + 274 len 22]
                        else:
                            mem[_8470 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_8470 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_8470 + ceil32(return_data.size) + 275 len 22]
                        if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                            revert with 0, 'SafeMath: addition overflow'
                        stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                        sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                        emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)] + (0 / stor12)
        require sub_3dab98ff
        if (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff) / sub_3dab98ff != sub_1634404c - sub_d151bfcd[address(msg.sender)].field_1024:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        mem[0] = msg.sender
        mem[32] = 4
        if not sub_d151bfcd[address(msg.sender)].field_512:
            _6013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6013] = 26
            mem[_6013 + 32] = 'SafeMath: division by zero'
            if stor12 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12
            if stor7[address(msg.sender)] + (0 / stor12) < stor7[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            if not stor7[address(msg.sender)] + (0 / stor12):
                return 1, 0
            if _rewardClaimFee <= 0:
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                _6914 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                _6915 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6914 + 100] = 32
                mem[_6914 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _7261 = mem[_6915]
                mem[_6914 + 164 len floor32(mem[_6915])] = mem[_6915 + 32 len floor32(mem[_6915])]
                mem[_6914 + floor32(mem[_6915]) + -(mem[_6915] % 32) + 196 len mem[_6915] % 32] = mem[_6915 + -(mem[_6915] % 32) + floor32(mem[_6915]) + 64 len mem[_6915] % 32]
                call stor6.mem[_6914 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_6914 + 168 len _7261 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6914 + 274 len 22]
                else:
                    mem[_6914 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_6914 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_6914 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
            else:
                if not stor7[address(msg.sender)] + (0 / stor12):
                    _6949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6949] = 26
                    mem[_6949 + 32] = 'SafeMath: division by zero'
                    _7205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7205] = 30
                    mem[_7205 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7[address(msg.sender)] + (0 / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _8220 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12)
                    _8221 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8220 + 100] = 32
                    mem[_8220 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9108 = mem[_8221]
                    mem[_8220 + 164 len floor32(mem[_8221])] = mem[_8221 + 32 len floor32(mem[_8221])]
                    mem[_8220 + floor32(mem[_8221]) + -(mem[_8221] % 32) + 196 len mem[_8221] % 32] = mem[_8221 + -(mem[_8221] % 32) + floor32(mem[_8221]) + 64 len mem[_8221] % 32]
                    call stor6.mem[_8220 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8220 + 168 len _9108 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8220 + 274 len 22]
                    else:
                        mem[_8220 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8220 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8220 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12), block.timestamp, msg.sender);
                else:
                    require stor7[address(msg.sender)] + (0 / stor12)
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + (0 / stor12) != _rewardClaimFee:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7021] = 26
                    mem[_7021 + 32] = 'SafeMath: division by zero'
                    _7348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7348] = 30
                    mem[_7348 + 32] = 'SafeMath: subtraction overflow'
                    if (stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + (0 / stor12):
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(msg.sender)] = 0
                    if stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12) < stor8[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + (0 / stor12)
                    _8463 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100)
                    _8464 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_8463 + 100] = 32
                    mem[_8463 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor6):
                        revert with 0, 'Address: call to non-contract'
                    _9366 = mem[_8464]
                    mem[_8463 + 164 len floor32(mem[_8464])] = mem[_8464 + 32 len floor32(mem[_8464])]
                    mem[_8463 + floor32(mem[_8464]) + -(mem[_8464] % 32) + 196 len mem[_8464] % 32] = mem[_8464 + -(mem[_8464] % 32) + floor32(mem[_8464]) + 64 len mem[_8464] % 32]
                    call stor6.mem[_8463 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_8463 + 168 len _9366 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8463 + 274 len 22]
                    else:
                        mem[_8463 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_8463 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_8463 + ceil32(return_data.size) + 275 len 22]
                    if stor14 + stor7[address(msg.sender)] + (0 / stor12) < stor14:
                        revert with 0, 'SafeMath: addition overflow'
                    stor14 = stor14 + stor7[address(msg.sender)] + (0 / stor12)
                    sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                    emit RewardClaimSuccessful(stor7[address(msg.sender)] + (0 / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + (0 / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
            return 1, stor7[address(msg.sender)] + (0 / stor12)
        require sub_d151bfcd[address(msg.sender)].field_512
        if (sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / sub_d151bfcd[address(msg.sender)].field_512 != (sub_1634404c * sub_3dab98ff) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _6069 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6069] = 26
        mem[_6069 + 32] = 'SafeMath: division by zero'
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor7[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 8
        if not stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
            return 1, 0
        if _rewardClaimFee <= 0:
            stor7[address(msg.sender)] = 0
            if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 8
            stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            _6980 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            _6981 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_6980 + 100] = 32
            mem[_6980 + 132] = 'SafeERC20: low-level call failed'
            if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor6):
                revert with 0, 'Address: call to non-contract'
            _7427 = mem[_6981]
            mem[_6980 + 164 len floor32(mem[_6981])] = mem[_6981 + 32 len floor32(mem[_6981])]
            mem[_6980 + floor32(mem[_6981]) + -(mem[_6981] % 32) + 196 len mem[_6981] % 32] = mem[_6981 + floor32(mem[_6981]) + -(mem[_6981] % 32) + 64 len mem[_6981] % 32]
            call stor6 with:
                 gas gas_remaining wei
                args mem[_6980 + 168 len _7427 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_6980 + 274 len 22]
            else:
                mem[_6980 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_6980 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_6980 + ceil32(return_data.size) + 275 len 22]
            if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                revert with 0, 'SafeMath: addition overflow'
            stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
            sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
            emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
        else:
            if not stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                _7020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7020] = 26
                mem[_7020 + 32] = 'SafeMath: division by zero'
                _7347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7347] = 30
                mem[_7347 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8456 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8457 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_8456 + 100] = 32
                mem[_8456 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _9362 = mem[_8457]
                mem[_8456 + 164 len floor32(mem[_8457])] = mem[_8457 + 32 len floor32(mem[_8457])]
                mem[_8456 + floor32(mem[_8457]) + -(mem[_8457] % 32) + 196 len mem[_8457] % 32] = mem[_8457 + floor32(mem[_8457]) + -(mem[_8457] % 32) + 64 len mem[_8457] % 32]
                call stor6 with:
                     gas gas_remaining wei
                    args mem[_8456 + 168 len _9362 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8456 + 274 len 22]
                else:
                    mem[_8456 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_8456 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8456 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12), block.timestamp, msg.sender);
            else:
                require stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                if (stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) != _rewardClaimFee:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _7073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7073] = 26
                mem[_7073 + 32] = 'SafeMath: division by zero'
                _7523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7523] = 30
                mem[_7523 + 32] = 'SafeMath: subtraction overflow'
                if (stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100 > stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12):
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7[address(msg.sender)] = 0
                if stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor8[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] = stor8[address(msg.sender)] + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                _8648 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100)
                _8649 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_8648 + 100] = 32
                mem[_8648 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.hash(stor6) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor6):
                    revert with 0, 'Address: call to non-contract'
                _9570 = mem[_8649]
                mem[_8648 + 164 len floor32(mem[_8649])] = mem[_8649 + 32 len floor32(mem[_8649])]
                mem[_8648 + floor32(mem[_8649]) + -(mem[_8649] % 32) + 196 len mem[_8649] % 32] = mem[_8649 + floor32(mem[_8649]) + -(mem[_8649] % 32) + 64 len mem[_8649] % 32]
                call stor6 with:
                     gas gas_remaining wei
                    args mem[_8648 + 168 len _9570 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8648 + 274 len 22]
                else:
                    mem[_8648 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_8648 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_8648 + ceil32(return_data.size) + 275 len 22]
                if stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) < stor14:
                    revert with 0, 'SafeMath: addition overflow'
                stor14 = stor14 + stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
                sub_d151bfcd[address(msg.sender)].field_768 = block.timestamp
                emit RewardClaimSuccessful(stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12) - ((stor7[address(msg.sender)] * _rewardClaimFee) + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12 * _rewardClaimFee) / 100), block.timestamp, msg.sender);
    return 1, 
           stor7[address(msg.sender)] + ((sub_1634404c * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) - (sub_d151bfcd[address(msg.sender)].field_1024 * sub_3dab98ff * sub_d151bfcd[address(msg.sender)].field_512) / stor12)
}



}
