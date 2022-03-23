contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const REWARD_DENOMINATOR = 10000

const BONUS_MULTIPLIER = 10


address owner;
address sushiAddress;
address devaddr;
uint256 bonusEndBlock;
uint256 sushiPerBlock;
address sub_28a198ffAddress;
uint256 withdrawalFee;
uint256 devReward;
uint256 sub_90244617;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function sushi() payable {
    return sushiAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function devReward() payable {
    return devReward
}

function sub_28a198ff(?) payable {
    return sub_28a198ffAddress
}

function startBlock() payable {
    return startBlock
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function sub_90244617(?) payable {
    return sub_90244617
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sushiPerBlock() payable {
    return sushiPerBlock
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devReward = arg1
}

function setAcsACSReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_90244617 = arg1
}

function setAcsACS(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_28a198ffAddress = arg1
}

function setSushiPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sushiPerBlock = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    withdrawalFee = arg1
}

function transferOwnership(address arg1) payable {
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        if (10 * arg2) - (10 * arg1) / arg2 - arg1 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((10 * arg2) - (10 * arg1))
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if arg2 - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndBlock)
    if (10 * bonusEndBlock) - (10 * arg1) / bonusEndBlock - arg1 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 + (9 * bonusEndBlock) < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 + (9 * bonusEndBlock) - (10 * arg1))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function pendingSushi(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sushiPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) / block.number - poolInfo[arg1].field_512 != sushiPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) / block.number - bonusEndBlock != sushiPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number + (9 * bonusEndBlock) < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number + (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) / block.number + (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) != sushiPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                    else:
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, devReward * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                        else:
                            if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sushiPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (10 * block.number * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr, devReward * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                        else:
                            if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) / block.number - poolInfo[arg1].field_512 != sushiPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) - (poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) / block.number - bonusEndBlock != sushiPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, 0
                                else:
                                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != devReward:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, 0
                                else:
                                    if sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_90244617:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number + (9 * bonusEndBlock) < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number + (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, 0
                            else:
                                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) / block.number + (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) != sushiPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, 0
                                else:
                                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[arg1].field_512 * sushiPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != devReward:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, 0
                                else:
                                    if sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_90244617:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    require ext_code.size(sushiAddress)
                                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sushiAddress)
                                call sushiAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[arg1].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sushiPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _1877 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1877] = 30
            mem[_1877 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1877 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1948] = 26
                mem[_1948 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1960 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1960 + 68] = mem[idx + _1948 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1960 + 68] = mem[_1960 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1960 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2024] = 26
                    mem[_2024 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2176] = 26
                        mem[_2176 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2546] = 26
                            mem[_2546 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2671 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2671 + 68] = mem[idx + _2546 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2671 + 68] = mem[_2671 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2671 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2604] = 26
                        mem[_2604 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2749 + 68] = mem[idx + _2604 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2749 + 68] = mem[_2749 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2749 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2186 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2186] = 26
                    mem[_2186 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2603] = 26
                        mem[_2603 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2746 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2746 + 68] = mem[idx + _2603 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2746 + 68] = mem[_2746 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2746 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2670] = 26
                    mem[_2670 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2831 + 68] = mem[idx + _2670 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2831 + 68] = mem[_2831 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2831 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2033] = 26
                mem[_2033 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2185] = 26
                    mem[_2185 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2602] = 26
                        mem[_2602 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2743 + 68] = mem[idx + _2602 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2743 + 68] = mem[_2743 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2743 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2669 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2669] = 26
                    mem[_2669 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2828 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2828 + 68] = mem[idx + _2669 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2828 + 68] = mem[_2828 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2828 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2202] = 26
                mem[_2202 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2668] = 26
                    mem[_2668 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2825 + 68] = mem[idx + _2668 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2825 + 68] = mem[_2825 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2825 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2742] = 26
                mem[_2742 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2910 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2910 + 68] = mem[idx + _2742 + 32]
                    idx = idx + 32
                    continue 
                mem[_2910 + 68] = mem[_2910 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2910 + -mem[64] + 100
            if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                _1955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1955] = 26
                mem[_1955 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1968 + 68] = mem[idx + _1955 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1968 + 68] = mem[_1968 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1968 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2032 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2032] = 26
                    mem[_2032 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2184] = 26
                        mem[_2184 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2599 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2599] = 26
                            mem[_2599 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2739 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2739 + 68] = mem[idx + _2599 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2739 + 68] = mem[_2739 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2739 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2667] = 26
                        mem[_2667 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2822 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2822 + 68] = mem[idx + _2667 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2822 + 68] = mem[_2822 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2822 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2201] = 26
                    mem[_2201 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2666] = 26
                        mem[_2666 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2819 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2819 + 68] = mem[idx + _2666 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2819 + 68] = mem[_2819 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2819 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2738] = 26
                    mem[_2738 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2906 + 68] = mem[idx + _2738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2906 + 68] = mem[_2906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2906 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2046 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2046] = 26
                mem[_2046 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2200] = 26
                    mem[_2200 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2665 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2665] = 26
                        mem[_2665 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2816 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2816 + 68] = mem[idx + _2665 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2816 + 68] = mem[_2816 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2816 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2737 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2737] = 26
                    mem[_2737 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2903 + 68] = mem[idx + _2737 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2903 + 68] = mem[_2903 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2903 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2223] = 26
                mem[_2223 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2736] = 26
                    mem[_2736 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2900 + 68] = mem[idx + _2736 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2900 + 68] = mem[_2900 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2900 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2815] = 26
                mem[_2815 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2977 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2977 + 68] = mem[idx + _2815 + 32]
                    idx = idx + 32
                    continue 
                mem[_2977 + 68] = mem[_2977 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2977 + -mem[64] + 100
            if (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sushiPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                _1959 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1959] = 26
                mem[_1959 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1976 + 68] = mem[idx + _1959 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1976 + 68] = mem[_1976 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1976 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2045] = 26
                    mem[_2045 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2199] = 26
                        mem[_2199 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2662 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2662] = 26
                            mem[_2662 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2812 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2812 + 68] = mem[idx + _2662 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2812 + 68] = mem[_2812 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2812 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2735] = 26
                        mem[_2735 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2897 + 68] = mem[idx + _2735 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2897 + 68] = mem[_2897 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2897 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2222 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2222] = 26
                    mem[_2222 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2734] = 26
                        mem[_2734 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2894 + 68] = mem[idx + _2734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2894 + 68] = mem[_2894 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2894 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2811] = 26
                    mem[_2811 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2973 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2973 + 68] = mem[idx + _2811 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2973 + 68] = mem[_2973 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2973 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2059] = 26
                mem[_2059 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2221] = 26
                    mem[_2221 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2733] = 26
                        mem[_2733 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2891 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2891 + 68] = mem[idx + _2733 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2891 + 68] = mem[_2891 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2891 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2810] = 26
                    mem[_2810 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2970 + 68] = mem[idx + _2810 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2970 + 68] = mem[_2970 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2970 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2244] = 26
                mem[_2244 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2809] = 26
                    mem[_2809 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2967 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2967 + 68] = mem[idx + _2809 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2967 + 68] = mem[_2967 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2967 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2890 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2890] = 26
                mem[_2890 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3029 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3029 + 68] = mem[idx + _2890 + 32]
                    idx = idx + 32
                    continue 
                mem[_3029 + 68] = mem[_3029 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3029 + -mem[64] + 100
            if (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1967 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1967] = 26
            mem[_1967 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1983 + 68] = mem[idx + _1967 + 32]
                    idx = idx + 32
                    continue 
                mem[_1983 + 68] = mem[_1983 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1983 + -mem[64] + 100
            if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2058] = 26
                mem[_2058 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2220] = 26
                    mem[_2220 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2730] = 26
                        mem[_2730 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2887 + 68] = mem[idx + _2730 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2887 + 68] = mem[_2887 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2887 + -mem[64] + 100
                    if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2808] = 26
                    mem[_2808 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2964 + 68] = mem[idx + _2808 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2964 + 68] = mem[_2964 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2964 + -mem[64] + 100
                if sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2243] = 26
                mem[_2243 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2807] = 26
                    mem[_2807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2961 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2961 + 68] = mem[idx + _2807 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2961 + 68] = mem[_2961 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2961 + -mem[64] + 100
                if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2886] = 26
                mem[_2886 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3025 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3025 + 68] = mem[idx + _2886 + 32]
                    idx = idx + 32
                    continue 
                mem[_3025 + 68] = mem[_3025 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3025 + -mem[64] + 100
            if devReward * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2072 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2072] = 26
            mem[_2072 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2242] = 26
                mem[_2242 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2806] = 26
                    mem[_2806 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2958 + 68] = mem[idx + _2806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2958 + 68] = mem[_2958 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2958 + -mem[64] + 100
                if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2885] = 26
                mem[_2885 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3022 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3022 + 68] = mem[idx + _2885 + 32]
                    idx = idx + 32
                    continue 
                mem[_3022 + 68] = mem[_3022 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3022 + -mem[64] + 100
            if sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2262] = 26
            mem[_2262 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2884] = 26
                mem[_2884 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3019 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3019 + 68] = mem[idx + _2884 + 32]
                    idx = idx + 32
                    continue 
                mem[_3019 + 68] = mem[_3019 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3019 + -mem[64] + 100
            if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2957 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2957] = 26
            mem[_2957 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3071 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3071 + 68] = mem[idx + _2957 + 32]
                idx = idx + 32
                continue 
            mem[_3071 + 68] = mem[_3071 + 74 len 26]
            revert with memory
              from mem[64]
               len _3071 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _1879 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1879] = 30
            mem[_1879 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1879 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1937] = 26
                mem[_1937 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1942 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1942 + 68] = mem[idx + _1937 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1942 + 68] = mem[_1942 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1942 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1997] = 26
                    mem[_1997 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2140] = 26
                        mem[_2140 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2452 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2452] = 26
                            mem[_2452 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2498 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2498 + 68] = mem[idx + _2452 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2498 + 68] = mem[_2498 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2498 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2473] = 26
                        mem[_2473 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2537 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2537 + 68] = mem[idx + _2473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2537 + 68] = mem[_2537 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2537 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2155] = 26
                    mem[_2155 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2472] = 26
                        mem[_2472 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2534 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2534 + 68] = mem[idx + _2472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2534 + 68] = mem[_2534 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2534 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2497] = 26
                    mem[_2497 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2589 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2589 + 68] = mem[idx + _2497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2589 + 68] = mem[_2589 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2589 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2005] = 26
                mem[_2005 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2154] = 26
                    mem[_2154 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2471 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2471] = 26
                        mem[_2471 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2531 + 68] = mem[idx + _2471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2531 + 68] = mem[_2531 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2531 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2496] = 26
                    mem[_2496 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2586 + 68] = mem[idx + _2496 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2586 + 68] = mem[_2586 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2586 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2165] = 26
                mem[_2165 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2495] = 26
                    mem[_2495 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2583 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2583 + 68] = mem[idx + _2495 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2583 + 68] = mem[_2583 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2583 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2530 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2530] = 26
                mem[_2530 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2648 + 68] = mem[idx + _2530 + 32]
                    idx = idx + 32
                    continue 
                mem[_2648 + 68] = mem[_2648 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2648 + -mem[64] + 100
            if (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) / block.number - poolInfo[idx].field_512 != sushiPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock):
                _1940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1940] = 26
                mem[_1940 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1945 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1945 + 68] = mem[idx + _1940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1945 + 68] = mem[_1945 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1945 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2004 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2004] = 26
                    mem[_2004 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2153] = 26
                        mem[_2153 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2468 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2468] = 26
                            mem[_2468 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2527 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2527 + 68] = mem[idx + _2468 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2527 + 68] = mem[_2527 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2527 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2494 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2494] = 26
                        mem[_2494 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2580 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2580 + 68] = mem[idx + _2494 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2580 + 68] = mem[_2580 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2580 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2164] = 26
                    mem[_2164 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2493] = 26
                        mem[_2493 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2577 + 68] = mem[idx + _2493 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2577 + 68] = mem[_2577 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2577 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2526] = 26
                    mem[_2526 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2644 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2644 + 68] = mem[idx + _2526 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2644 + 68] = mem[_2644 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2644 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2013] = 26
                mem[_2013 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2163] = 26
                    mem[_2163 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2492] = 26
                        mem[_2492 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2574 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2574 + 68] = mem[idx + _2492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2574 + 68] = mem[_2574 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2574 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2525 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2525] = 26
                    mem[_2525 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2641 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2641 + 68] = mem[idx + _2525 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2641 + 68] = mem[_2641 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2641 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2171] = 26
                mem[_2171 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2524] = 26
                    mem[_2524 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2638 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2638 + 68] = mem[idx + _2524 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2638 + 68] = mem[_2638 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2638 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2573 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2573] = 26
                mem[_2573 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2708 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2708 + 68] = mem[idx + _2573 + 32]
                    idx = idx + 32
                    continue 
                mem[_2708 + 68] = mem[_2708 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2708 + -mem[64] + 100
            if (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1941 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1941] = 26
            mem[_1941 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1949 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1949 + 68] = mem[idx + _1941 + 32]
                    idx = idx + 32
                    continue 
                mem[_1949 + 68] = mem[_1949 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1949 + -mem[64] + 100
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2012] = 26
                mem[_2012 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2162] = 26
                    mem[_2162 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2489] = 26
                        mem[_2489 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2570 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2570 + 68] = mem[idx + _2489 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2570 + 68] = mem[_2570 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2570 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2523] = 26
                    mem[_2523 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2635 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2635 + 68] = mem[idx + _2523 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2635 + 68] = mem[_2635 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2635 + -mem[64] + 100
                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2170] = 26
                mem[_2170 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2522] = 26
                    mem[_2522 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2632 + 68] = mem[idx + _2522 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2632 + 68] = mem[_2632 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2632 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2569 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2569] = 26
                mem[_2569 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2704 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2704 + 68] = mem[idx + _2569 + 32]
                    idx = idx + 32
                    continue 
                mem[_2704 + 68] = mem[_2704 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2704 + -mem[64] + 100
            if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2021 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2021] = 26
            mem[_2021 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2169] = 26
                mem[_2169 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2521] = 26
                    mem[_2521 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2629 + 68] = mem[idx + _2521 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2629 + 68] = mem[_2629 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2629 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2568] = 26
                mem[_2568 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2701 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2701 + 68] = mem[idx + _2568 + 32]
                    idx = idx + 32
                    continue 
                mem[_2701 + 68] = mem[_2701 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2701 + -mem[64] + 100
            if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2179] = 26
            mem[_2179 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2567] = 26
                mem[_2567 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2698 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2698 + 68] = mem[idx + _2567 + 32]
                    idx = idx + 32
                    continue 
                mem[_2698 + 68] = mem[_2698 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2698 + -mem[64] + 100
            if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2628 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2628] = 26
            mem[_2628 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2774 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2774 + 68] = mem[idx + _2628 + 32]
                idx = idx + 32
                continue 
            mem[_2774 + 68] = mem[_2774 + 74 len 26]
            revert with memory
              from mem[64]
               len _2774 + -mem[64] + 100
        _1878 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1878] = 30
        mem[_1878 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _1878 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _1900 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1900] = 30
        mem[_1900 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _1900 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _2011 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2011] = 26
                mem[_2011 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2027 + 68] = mem[idx + _2011 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2027 + 68] = mem[_2027 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2027 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2122] = 26
                    mem[_2122 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2339] = 26
                        mem[_2339 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3120 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3120] = 26
                            mem[_3120 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3239 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3239 + 68] = mem[idx + _3120 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3239 + 68] = mem[_3239 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3239 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3181] = 26
                        mem[_3181 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3296 + 68] = mem[idx + _3181 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3296 + 68] = mem[_3296 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3296 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 26
                    mem[_2373 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3180 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3180] = 26
                        mem[_3180 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3293 + 68] = mem[idx + _3180 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3293 + 68] = mem[_3293 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3293 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3238] = 26
                    mem[_3238 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3351 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3351 + 68] = mem[idx + _3238 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3351 + 68] = mem[_3351 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3351 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2135] = 26
                mem[_2135 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2372] = 26
                    mem[_2372 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3179 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3179] = 26
                        mem[_3179 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3290 + 68] = mem[idx + _3179 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3290 + 68] = mem[_3290 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3290 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3237] = 26
                    mem[_3237 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3348 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3348 + 68] = mem[idx + _3237 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3348 + 68] = mem[_3348 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3348 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2404] = 26
                mem[_2404 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3236] = 26
                    mem[_3236 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3345 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3345 + 68] = mem[idx + _3236 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3345 + 68] = mem[_3345 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3345 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3289] = 26
                mem[_3289 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3403 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3403 + 68] = mem[idx + _3289 + 32]
                    idx = idx + 32
                    continue 
                mem[_3403 + 68] = mem[_3403 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3403 + -mem[64] + 100
            if (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) / block.number - bonusEndBlock != sushiPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock):
                _2020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2020] = 26
                mem[_2020 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2038 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2038 + 68] = mem[idx + _2020 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2038 + 68] = mem[_2038 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2038 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2134] = 26
                    mem[_2134 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2371] = 26
                        mem[_2371 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3176] = 26
                            mem[_3176 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3286 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3286 + 68] = mem[idx + _3176 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3286 + 68] = mem[_3286 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3286 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 26
                        mem[_3235 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3342 + 68] = mem[idx + _3235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3342 + 68] = mem[_3342 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3342 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2403] = 26
                    mem[_2403 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3234] = 26
                        mem[_3234 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3339 + 68] = mem[idx + _3234 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3339 + 68] = mem[_3339 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3339 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3285] = 26
                    mem[_3285 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3399 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3399 + 68] = mem[idx + _3285 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3399 + 68] = mem[_3399 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3399 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2148 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2148] = 26
                mem[_2148 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2402] = 26
                    mem[_2402 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3233] = 26
                        mem[_3233 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3336 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3336 + 68] = mem[idx + _3233 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3336 + 68] = mem[_3336 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3336 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3284] = 26
                    mem[_3284 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3396 + 68] = mem[idx + _3284 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3396 + 68] = mem[_3396 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3396 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2428 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2428] = 26
                mem[_2428 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3283] = 26
                    mem[_3283 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3393 + 68] = mem[idx + _3283 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3393 + 68] = mem[_3393 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3393 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3335] = 26
                mem[_3335 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3449 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3449 + 68] = mem[idx + _3335 + 32]
                    idx = idx + 32
                    continue 
                mem[_3449 + 68] = mem[_3449 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3449 + -mem[64] + 100
            if (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2026 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2026] = 26
            mem[_2026 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _2050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2050 + 68] = mem[idx + _2026 + 32]
                    idx = idx + 32
                    continue 
                mem[_2050 + 68] = mem[_2050 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2050 + -mem[64] + 100
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2147] = 26
                mem[_2147 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2401] = 26
                    mem[_2401 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3230] = 26
                        mem[_3230 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3332 + 68] = mem[idx + _3230 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3332 + 68] = mem[_3332 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3332 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3282] = 26
                    mem[_3282 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3390 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3390 + 68] = mem[idx + _3282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3390 + 68] = mem[_3390 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3390 + -mem[64] + 100
                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2427] = 26
                mem[_2427 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3281] = 26
                    mem[_3281 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3387 + 68] = mem[idx + _3281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3387 + 68] = mem[_3387 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3387 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3331] = 26
                mem[_3331 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3445 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3445 + 68] = mem[idx + _3331 + 32]
                    idx = idx + 32
                    continue 
                mem[_3445 + 68] = mem[_3445 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3445 + -mem[64] + 100
            if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2159 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2159] = 26
            mem[_2159 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2426] = 26
                mem[_2426 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3280] = 26
                    mem[_3280 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3384 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3384 + 68] = mem[idx + _3280 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3384 + 68] = mem[_3384 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3384 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3330] = 26
                mem[_3330 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3442 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3442 + 68] = mem[idx + _3330 + 32]
                    idx = idx + 32
                    continue 
                mem[_3442 + 68] = mem[_3442 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3442 + -mem[64] + 100
            if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2445 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2445] = 26
            mem[_2445 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _3329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3329] = 26
                mem[_3329 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3439 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3439 + 68] = mem[idx + _3329 + 32]
                    idx = idx + 32
                    continue 
                mem[_3439 + 68] = mem[_3439 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3439 + -mem[64] + 100
            if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3383 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3383] = 26
            mem[_3383 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3495 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3495 + 68] = mem[idx + _3383 + 32]
                idx = idx + 32
                continue 
            mem[_3495 + 68] = mem[_3495 + 74 len 26]
            revert with memory
              from mem[64]
               len _3495 + -mem[64] + 100
        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number + (9 * bonusEndBlock) < 10 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number + (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512):
            _2019 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2019] = 26
            mem[_2019 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _2035 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2035 + 68] = mem[idx + _2019 + 32]
                    idx = idx + 32
                    continue 
                mem[_2035 + 68] = mem[_2035 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2035 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _2131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2131] = 26
                mem[_2131 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2366] = 26
                    mem[_2366 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3169] = 26
                        mem[_3169 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3275 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3275 + 68] = mem[_3275 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3275 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3225] = 26
                    mem[_3225 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3326 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3326 + 68] = mem[idx + _3225 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3326 + 68] = mem[_3326 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3326 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2398 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2398] = 26
                mem[_2398 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3224] = 26
                    mem[_3224 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3323 + 68] = mem[idx + _3224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3323 + 68] = mem[_3323 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3323 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3274] = 26
                mem[_3274 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3379 + 68] = mem[idx + _3274 + 32]
                    idx = idx + 32
                    continue 
                mem[_3379 + 68] = mem[_3379 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3379 + -mem[64] + 100
            if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2146 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2146] = 26
            mem[_2146 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * 0 / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _2397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2397] = 26
                mem[_2397 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3223] = 26
                    mem[_3223 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3320 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3320 + 68] = mem[idx + _3223 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3320 + 68] = mem[_3320 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3320 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3273] = 26
                mem[_3273 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3376 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3376 + 68] = mem[idx + _3273 + 32]
                    idx = idx + 32
                    continue 
                mem[_3376 + 68] = mem[_3376 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3376 + -mem[64] + 100
            if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2425 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2425] = 26
            mem[_2425 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _3272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3272] = 26
                mem[_3272 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3373 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3373 + 68] = mem[idx + _3272 + 32]
                    idx = idx + 32
                    continue 
                mem[_3373 + 68] = mem[_3373 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3373 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3319 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3319] = 26
            mem[_3319 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3431 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3431 + 68] = mem[idx + _3319 + 32]
                idx = idx + 32
                continue 
            mem[_3431 + 68] = mem[_3431 + 74 len 26]
            revert with memory
              from mem[64]
               len _3431 + -mem[64] + 100
        if (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) / block.number + (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) != sushiPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
            _2025 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2025] = 26
            mem[_2025 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _2047 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2047 + 68] = mem[idx + _2025 + 32]
                    idx = idx + 32
                    continue 
                mem[_2047 + 68] = mem[_2047 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2047 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _2145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2145] = 26
                mem[_2145 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2396] = 26
                    mem[_2396 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3220] = 26
                        mem[_3220 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3316 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3316 + 68] = mem[idx + _3220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3316 + 68] = mem[_3316 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3316 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3271] = 26
                    mem[_3271 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3370 + 68] = mem[idx + _3271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3370 + 68] = mem[_3370 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3370 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2424 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2424] = 26
                mem[_2424 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3270] = 26
                    mem[_3270 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3367 + 68] = mem[idx + _3270 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3367 + 68] = mem[_3367 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3367 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3315] = 26
                mem[_3315 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3427 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3427 + 68] = mem[idx + _3315 + 32]
                    idx = idx + 32
                    continue 
                mem[_3427 + 68] = mem[_3427 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3427 + -mem[64] + 100
            if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2158] = 26
            mem[_2158 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * 0 / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _2423 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2423] = 26
                mem[_2423 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3269] = 26
                    mem[_3269 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3364 + 68] = mem[idx + _3269 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3364 + 68] = mem[_3364 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3364 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3314] = 26
                mem[_3314 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3424 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3424 + 68] = mem[idx + _3314 + 32]
                    idx = idx + 32
                    continue 
                mem[_3424 + 68] = mem[_3424 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3424 + -mem[64] + 100
            if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2444 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2444] = 26
            mem[_2444 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _3313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3313] = 26
                mem[_3313 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3421 + 68] = mem[idx + _3313 + 32]
                    idx = idx + 32
                    continue 
                mem[_3421 + 68] = mem[_3421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3421 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3363] = 26
            mem[_3363 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3477 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3477 + 68] = mem[idx + _3363 + 32]
                idx = idx + 32
                continue 
            mem[_3477 + 68] = mem[_3477 + 74 len 26]
            revert with memory
              from mem[64]
               len _3477 + -mem[64] + 100
        if (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2034 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2034] = 26
        mem[_2034 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _2060 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2060 + 68] = mem[idx + _2034 + 32]
                idx = idx + 32
                continue 
            mem[_2060 + 68] = mem[_2060 + 74 len 26]
            revert with memory
              from mem[64]
               len _2060 + -mem[64] + 100
        if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _2157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2157] = 26
            mem[_2157 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2422] = 26
                mem[_2422 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3266 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3266] = 26
                    mem[_3266 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3360 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3360 + 68] = mem[idx + _3266 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3360 + 68] = mem[_3360 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3360 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3312] = 26
                mem[_3312 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3418 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3418 + 68] = mem[idx + _3312 + 32]
                    idx = idx + 32
                    continue 
                mem[_3418 + 68] = mem[_3418 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3418 + -mem[64] + 100
            if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2443 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2443] = 26
            mem[_2443 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _3311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3311] = 26
                mem[_3311 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3415 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3415 + 68] = mem[idx + _3311 + 32]
                    idx = idx + 32
                    continue 
                mem[_3415 + 68] = mem[_3415 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3415 + -mem[64] + 100
            if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3359 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3359] = 26
            mem[_3359 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3473 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3473 + 68] = mem[idx + _3359 + 32]
                idx = idx + 32
                continue 
            mem[_3473 + 68] = mem[_3473 + 74 len 26]
            revert with memory
              from mem[64]
               len _3473 + -mem[64] + 100
        if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2168 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2168] = 26
        mem[_2168 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sushiAddress)
        call sushiAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _2442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2442] = 26
            mem[_2442 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _3310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3310] = 26
                mem[_3310 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3412 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3412 + 68] = mem[idx + _3310 + 32]
                    idx = idx + 32
                    continue 
                mem[_3412 + 68] = mem[_3412 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3412 + -mem[64] + 100
            if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3358] = 26
            mem[_3358 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3470 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3470 + 68] = mem[idx + _3358 + 32]
                idx = idx + 32
                continue 
            mem[_3470 + 68] = mem[_3470 + 74 len 26]
            revert with memory
              from mem[64]
               len _3470 + -mem[64] + 100
        if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2459 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2459] = 26
        mem[_2459 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sushiAddress)
        call sushiAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sushiAddress)
        call sushiAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _3357 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3357] = 26
            mem[_3357 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3467 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3467 + 68] = mem[idx + _3357 + 32]
                idx = idx + 32
                continue 
            mem[_3467 + 68] = mem[_3467 + 74 len 26]
            revert with memory
              from mem[64]
               len _3467 + -mem[64] + 100
        if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _3411 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3411] = 26
        mem[_3411 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _3525 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _3525 + 68] = mem[idx + _3411 + 32]
            idx = idx + 32
            continue 
        mem[_3525 + 68] = mem[_3525 + 74 len 26]
        revert with memory
          from mem[64]
           len _3525 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _1932 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1932] = 30
                mem[_1932 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1932 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _2004 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2004] = 26
                    mem[_2004 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2016 + 68] = mem[idx + _2004 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2016 + 68] = mem[_2016 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2016 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2080] = 26
                        mem[_2080 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2232 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2232] = 26
                            mem[_2232 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _2602 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2602] = 26
                                mem[_2602 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _2727 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2727 + 68] = mem[idx + _2602 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2727 + 68] = mem[_2727 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2727 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2660] = 26
                            mem[_2660 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2805 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2805 + 68] = mem[idx + _2660 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2805 + 68] = mem[_2805 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2805 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2242] = 26
                        mem[_2242 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2659] = 26
                            mem[_2659 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2802 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2802 + 68] = mem[idx + _2659 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2802 + 68] = mem[_2802 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2802 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2726] = 26
                        mem[_2726 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2887 + 68] = mem[idx + _2726 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2887 + 68] = mem[_2887 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2887 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2089] = 26
                    mem[_2089 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2241 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2241] = 26
                        mem[_2241 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2658 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2658] = 26
                            mem[_2658 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2799 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2799 + 68] = mem[idx + _2658 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2799 + 68] = mem[_2799 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2799 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2725 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2725] = 26
                        mem[_2725 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2884 + 68] = mem[idx + _2725 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2884 + 68] = mem[_2884 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2884 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2258] = 26
                    mem[_2258 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2724 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2724] = 26
                        mem[_2724 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2881 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2881 + 68] = mem[idx + _2724 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2881 + 68] = mem[_2881 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2881 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2798] = 26
                    mem[_2798 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2966 + 68] = mem[idx + _2798 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2966 + 68] = mem[_2966 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2966 + -mem[64] + 100
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _2011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2011] = 26
                    mem[_2011 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2024 + 68] = mem[idx + _2011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2024 + 68] = mem[_2024 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2024 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2088] = 26
                        mem[_2088 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2240] = 26
                            mem[_2240 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _2655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2655] = 26
                                mem[_2655 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _2795 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2795 + 68] = mem[idx + _2655 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2795 + 68] = mem[_2795 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2795 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2723] = 26
                            mem[_2723 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2878 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2878 + 68] = mem[idx + _2723 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2878 + 68] = mem[_2878 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2878 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2257] = 26
                        mem[_2257 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2722 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2722] = 26
                            mem[_2722 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2875 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2875 + 68] = mem[idx + _2722 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2875 + 68] = mem[_2875 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2875 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2794] = 26
                        mem[_2794 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2962 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2962 + 68] = mem[idx + _2794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2962 + 68] = mem[_2962 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2962 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2102] = 26
                    mem[_2102 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2256 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2256] = 26
                        mem[_2256 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2721] = 26
                            mem[_2721 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2872 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2872 + 68] = mem[idx + _2721 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2872 + 68] = mem[_2872 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2872 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2793 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2793] = 26
                        mem[_2793 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2959 + 68] = mem[idx + _2793 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2959 + 68] = mem[_2959 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2959 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2279 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2279] = 26
                    mem[_2279 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2792 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2792] = 26
                        mem[_2792 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2956 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2956 + 68] = mem[idx + _2792 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2956 + 68] = mem[_2956 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2956 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2871 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2871] = 26
                    mem[_2871 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3033 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3033 + 68] = mem[idx + _2871 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3033 + 68] = mem[_3033 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3033 + -mem[64] + 100
                if (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sushiPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                    _2015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2015] = 26
                    mem[_2015 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2032 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2032 + 68] = mem[idx + _2015 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2032 + 68] = mem[_2032 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2032 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2101] = 26
                        mem[_2101 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2255 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2255] = 26
                            mem[_2255 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _2718 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2718] = 26
                                mem[_2718 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _2868 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2868 + 68] = mem[idx + _2718 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2868 + 68] = mem[_2868 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2868 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2791 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2791] = 26
                            mem[_2791 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2953 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2953 + 68] = mem[idx + _2791 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2953 + 68] = mem[_2953 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2953 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2278] = 26
                        mem[_2278 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2790 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2790] = 26
                            mem[_2790 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2950 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2950 + 68] = mem[idx + _2790 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2950 + 68] = mem[_2950 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2950 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2867] = 26
                        mem[_2867 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3029 + 68] = mem[idx + _2867 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3029 + 68] = mem[_3029 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3029 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2115] = 26
                    mem[_2115 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2277] = 26
                        mem[_2277 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2789 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2789] = 26
                            mem[_2789 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2947 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2947 + 68] = mem[idx + _2789 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2947 + 68] = mem[_2947 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2947 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2866 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2866] = 26
                        mem[_2866 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3026 + 68] = mem[idx + _2866 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3026 + 68] = mem[_3026 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3026 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2300] = 26
                    mem[_2300 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2865] = 26
                        mem[_2865 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3023 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3023 + 68] = mem[idx + _2865 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3023 + 68] = mem[_3023 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3023 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2946] = 26
                    mem[_2946 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3085 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3085 + 68] = mem[idx + _2946 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3085 + 68] = mem[_3085 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3085 + -mem[64] + 100
                if (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (10 * block.number * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2023 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2023] = 26
                mem[_2023 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2039 + 68] = mem[idx + _2023 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2039 + 68] = mem[_2039 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2039 + -mem[64] + 100
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2114] = 26
                    mem[_2114 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2276] = 26
                        mem[_2276 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _2786 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2786] = 26
                            mem[_2786 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2943 + 68] = mem[idx + _2786 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2943 + 68] = mem[_2943 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2943 + -mem[64] + 100
                        if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2864] = 26
                        mem[_2864 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3020 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3020 + 68] = mem[idx + _2864 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3020 + 68] = mem[_3020 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3020 + -mem[64] + 100
                    if sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2299] = 26
                    mem[_2299 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2863] = 26
                        mem[_2863 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3017 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3017 + 68] = mem[idx + _2863 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3017 + 68] = mem[_3017 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3017 + -mem[64] + 100
                    if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2942] = 26
                    mem[_2942 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3081 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3081 + 68] = mem[idx + _2942 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3081 + 68] = mem[_3081 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3081 + -mem[64] + 100
                if devReward * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2128] = 26
                mem[_2128 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2298] = 26
                    mem[_2298 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2862] = 26
                        mem[_2862 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3014 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3014 + 68] = mem[idx + _2862 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3014 + 68] = mem[_3014 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3014 + -mem[64] + 100
                    if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2941] = 26
                    mem[_2941 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3078 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3078 + 68] = mem[idx + _2941 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3078 + 68] = mem[_3078 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3078 + -mem[64] + 100
                if sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2318] = 26
                mem[_2318 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2940] = 26
                    mem[_2940 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3075 + 68] = mem[idx + _2940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3075 + 68] = mem[_3075 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3075 + -mem[64] + 100
                if 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3013] = 26
                mem[_3013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3127 + 68] = mem[idx + _3013 + 32]
                    idx = idx + 32
                    continue 
                mem[_3127 + 68] = mem[_3127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3127 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _1935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1935] = 30
                mem[_1935 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1935 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1993] = 26
                    mem[_1993 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1998 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1998 + 68] = mem[idx + _1993 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1998 + 68] = mem[_1998 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1998 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2053] = 26
                        mem[_2053 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2196 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2196] = 26
                            mem[_2196 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _2508 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2508] = 26
                                mem[_2508 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _2554 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2554 + 68] = mem[idx + _2508 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2554 + 68] = mem[_2554 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2554 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2529] = 26
                            mem[_2529 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2593 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2593 + 68] = mem[idx + _2529 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2593 + 68] = mem[_2593 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2593 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2211 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2211] = 26
                        mem[_2211 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2528 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2528] = 26
                            mem[_2528 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2590 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2590 + 68] = mem[idx + _2528 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2590 + 68] = mem[_2590 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2590 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2553] = 26
                        mem[_2553 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2645 + 68] = mem[idx + _2553 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2645 + 68] = mem[_2645 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2645 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2061] = 26
                    mem[_2061 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2210] = 26
                        mem[_2210 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2527 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2527] = 26
                            mem[_2527 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2587 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2587 + 68] = mem[idx + _2527 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2587 + 68] = mem[_2587 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2587 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2552] = 26
                        mem[_2552 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2642 + 68] = mem[idx + _2552 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2642 + 68] = mem[_2642 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2642 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2221] = 26
                    mem[_2221 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2551] = 26
                        mem[_2551 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2639 + 68] = mem[idx + _2551 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2639 + 68] = mem[_2639 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2639 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2586] = 26
                    mem[_2586 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2704 + 68] = mem[idx + _2586 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2704 + 68] = mem[_2704 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2704 + -mem[64] + 100
                if (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) / block.number - poolInfo[idx].field_512 != sushiPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock):
                    _1996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1996] = 26
                    mem[_1996 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2001 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2001 + 68] = mem[idx + _1996 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2001 + 68] = mem[_2001 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2001 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2060] = 26
                        mem[_2060 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2209] = 26
                            mem[_2209 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _2524 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2524] = 26
                                mem[_2524 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _2583 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2583 + 68] = mem[idx + _2524 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2583 + 68] = mem[_2583 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2583 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2550 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2550] = 26
                            mem[_2550 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2636 + 68] = mem[idx + _2550 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2636 + 68] = mem[_2636 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2636 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2220] = 26
                        mem[_2220 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2549] = 26
                            mem[_2549 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2633 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2633 + 68] = mem[idx + _2549 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2633 + 68] = mem[_2633 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2633 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2582] = 26
                        mem[_2582 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2700 + 68] = mem[idx + _2582 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2700 + 68] = mem[_2700 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2700 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2069] = 26
                    mem[_2069 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2219] = 26
                        mem[_2219 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2548] = 26
                            mem[_2548 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2630 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2630 + 68] = mem[idx + _2548 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2630 + 68] = mem[_2630 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2630 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2581 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2581] = 26
                        mem[_2581 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2697 + 68] = mem[idx + _2581 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2697 + 68] = mem[_2697 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2697 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2227] = 26
                    mem[_2227 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2580] = 26
                        mem[_2580 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2694 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2694 + 68] = mem[idx + _2580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2694 + 68] = mem[_2694 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2694 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2629] = 26
                    mem[_2629 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2764 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2764 + 68] = mem[idx + _2629 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2764 + 68] = mem[_2764 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2764 + -mem[64] + 100
                if (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) - (poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1997] = 26
                mem[_1997 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2005 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2005 + 68] = mem[idx + _1997 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2005 + 68] = mem[_2005 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2005 + -mem[64] + 100
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2068] = 26
                    mem[_2068 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2218] = 26
                        mem[_2218 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _2545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2545] = 26
                            mem[_2545 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2626 + 68] = mem[idx + _2545 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2626 + 68] = mem[_2626 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2626 + -mem[64] + 100
                        if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2579] = 26
                        mem[_2579 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2691 + 68] = mem[idx + _2579 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2691 + 68] = mem[_2691 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2691 + -mem[64] + 100
                    if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2226] = 26
                    mem[_2226 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2578] = 26
                        mem[_2578 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2688 + 68] = mem[idx + _2578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2688 + 68] = mem[_2688 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2688 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 26
                    mem[_2625 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2760 + 68] = mem[idx + _2625 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2760 + 68] = mem[_2760 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2760 + -mem[64] + 100
                if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2077] = 26
                mem[_2077 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2225] = 26
                    mem[_2225 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2577] = 26
                        mem[_2577 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2685 + 68] = mem[idx + _2577 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2685 + 68] = mem[_2685 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2685 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2624] = 26
                    mem[_2624 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2757 + 68] = mem[idx + _2624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2757 + 68] = mem[_2757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2757 + -mem[64] + 100
                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2235] = 26
                mem[_2235 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2623] = 26
                    mem[_2623 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2754 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2754 + 68] = mem[idx + _2623 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2754 + 68] = mem[_2754 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2754 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2684] = 26
                mem[_2684 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2830 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2830 + 68] = mem[idx + _2684 + 32]
                    idx = idx + 32
                    continue 
                mem[_2830 + 68] = mem[_2830 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2830 + -mem[64] + 100
            _1934 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1934] = 30
            mem[_1934 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1934 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _1956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1956] = 30
            mem[_1956 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1956 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _2067 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2067] = 26
                    mem[_2067 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2083 + 68] = mem[idx + _2067 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2083 + 68] = mem[_2083 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2083 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2178] = 26
                        mem[_2178 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2395] = 26
                            mem[_2395 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _3176 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3176] = 26
                                mem[_3176 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _3295 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3295 + 68] = mem[idx + _3176 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3295 + 68] = mem[_3295 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _3295 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3237 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3237] = 26
                            mem[_3237 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3352 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3352 + 68] = mem[idx + _3237 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3352 + 68] = mem[_3352 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3352 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2429] = 26
                        mem[_2429 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3236 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3236] = 26
                            mem[_3236 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3349 + 68] = mem[idx + _3236 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3349 + 68] = mem[_3349 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3349 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3294] = 26
                        mem[_3294 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3407 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3407 + 68] = mem[idx + _3294 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3407 + 68] = mem[_3407 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3407 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2191] = 26
                    mem[_2191 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2428] = 26
                        mem[_2428 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3235 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3235] = 26
                            mem[_3235 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3346 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3346 + 68] = mem[idx + _3235 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3346 + 68] = mem[_3346 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3346 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3293] = 26
                        mem[_3293 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3404 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3404 + 68] = mem[idx + _3293 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3404 + 68] = mem[_3404 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3404 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2460 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2460] = 26
                    mem[_2460 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3292] = 26
                        mem[_3292 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3401 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3401 + 68] = mem[idx + _3292 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3401 + 68] = mem[_3401 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3401 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 26
                    mem[_3345 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3459 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3459 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3459 + 68] = mem[_3459 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3459 + -mem[64] + 100
                if (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) / block.number - bonusEndBlock != sushiPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock):
                    _2076 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2076] = 26
                    mem[_2076 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _2094 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2094 + 68] = mem[idx + _2076 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2094 + 68] = mem[_2094 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2094 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _2190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2190] = 26
                        mem[_2190 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _2427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2427] = 26
                            mem[_2427 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_28a198ffAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sushiAddress)
                            call sushiAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _3232 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3232] = 26
                                mem[_3232 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _3342 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3342 + 68] = mem[idx + _3232 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3342 + 68] = mem[_3342 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _3342 + -mem[64] + 100
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3291] = 26
                            mem[_3291 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3398 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3398 + 68] = mem[idx + _3291 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3398 + 68] = mem[_3398 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3398 + -mem[64] + 100
                        if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2459 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2459] = 26
                        mem[_2459 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3290 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3290] = 26
                            mem[_3290 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3395 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3395 + 68] = mem[idx + _3290 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3395 + 68] = mem[_3395 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3395 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3341] = 26
                        mem[_3341 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3455 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3455 + 68] = mem[idx + _3341 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3455 + 68] = mem[_3455 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3455 + -mem[64] + 100
                    if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2204] = 26
                    mem[_2204 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, devReward * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2458 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2458] = 26
                        mem[_2458 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3289] = 26
                            mem[_3289 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3392 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3392 + 68] = mem[idx + _3289 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3392 + 68] = mem[_3392 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3392 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3340] = 26
                        mem[_3340 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3452 + 68] = mem[idx + _3340 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3452 + 68] = mem[_3452 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3452 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2484] = 26
                    mem[_2484 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3339] = 26
                        mem[_3339 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3449 + 68] = mem[idx + _3339 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3449 + 68] = mem[_3449 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3449 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3391] = 26
                    mem[_3391 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3505 + 68] = mem[idx + _3391 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3505 + 68] = mem[_3505 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3505 + -mem[64] + 100
                if (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) - (bonusEndBlock * sushiPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2082 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2082] = 26
                mem[_2082 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2106 + 68] = mem[idx + _2082 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2106 + 68] = mem[_2106 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2106 + -mem[64] + 100
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2203] = 26
                    mem[_2203 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _2457 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2457] = 26
                        mem[_2457 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _3286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3286] = 26
                            mem[_3286 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3388 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3388 + 68] = mem[idx + _3286 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3388 + 68] = mem[_3388 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3388 + -mem[64] + 100
                        if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3338] = 26
                        mem[_3338 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3446 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3446 + 68] = mem[idx + _3338 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3446 + 68] = mem[_3446 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3446 + -mem[64] + 100
                    if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2483] = 26
                    mem[_2483 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3337 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3337] = 26
                        mem[_3337 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3443 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3443 + 68] = mem[idx + _3337 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3443 + 68] = mem[_3443 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3443 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3387] = 26
                    mem[_3387 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3501 + 68] = mem[idx + _3387 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3501 + 68] = mem[_3501 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3501 + -mem[64] + 100
                if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2215] = 26
                mem[_2215 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2482] = 26
                    mem[_2482 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3336] = 26
                        mem[_3336 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3440 + 68] = mem[idx + _3336 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3440 + 68] = mem[_3440 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3440 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3386] = 26
                    mem[_3386 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3498 + 68] = mem[idx + _3386 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3498 + 68] = mem[_3498 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3498 + -mem[64] + 100
                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2501] = 26
                mem[_2501 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3385] = 26
                    mem[_3385 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3495 + 68] = mem[idx + _3385 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 68] = mem[_3495 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3439] = 26
                mem[_3439 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3551 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3551 + 68] = mem[idx + _3439 + 32]
                    idx = idx + 32
                    continue 
                mem[_3551 + 68] = mem[_3551 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3551 + -mem[64] + 100
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number + (9 * bonusEndBlock) < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number + (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512):
                _2075 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2075] = 26
                mem[_2075 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2091 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2091 + 68] = mem[idx + _2075 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2091 + 68] = mem[_2091 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2091 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2187] = 26
                    mem[_2187 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2422] = 26
                        mem[_2422 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3225 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3225] = 26
                            mem[_3225 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3331 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3331 + 68] = mem[idx + _3225 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3331 + 68] = mem[_3331 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3331 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3281] = 26
                        mem[_3281 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3382 + 68] = mem[idx + _3281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3382 + 68] = mem[_3382 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3382 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2454 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2454] = 26
                    mem[_2454 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3280] = 26
                        mem[_3280 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3379 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3379 + 68] = mem[idx + _3280 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3379 + 68] = mem[_3379 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3379 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3330] = 26
                    mem[_3330 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3435 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3435 + 68] = mem[idx + _3330 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3435 + 68] = mem[_3435 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3435 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2202] = 26
                mem[_2202 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2453] = 26
                    mem[_2453 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 26
                        mem[_3279 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3376 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3376 + 68] = mem[idx + _3279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3376 + 68] = mem[_3376 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3376 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3329] = 26
                    mem[_3329 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3432 + 68] = mem[idx + _3329 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3432 + 68] = mem[_3432 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3432 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2481 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2481] = 26
                mem[_2481 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3328] = 26
                    mem[_3328 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3429 + 68] = mem[idx + _3328 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3429 + 68] = mem[_3429 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3429 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3375] = 26
                mem[_3375 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3487 + 68] = mem[idx + _3375 + 32]
                    idx = idx + 32
                    continue 
                mem[_3487 + 68] = mem[_3487 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3487 + -mem[64] + 100
            if (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) / block.number + (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) != sushiPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock):
                _2081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2081] = 26
                mem[_2081 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _2103 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2103 + 68] = mem[idx + _2081 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2103 + 68] = mem[_2103 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2103 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _2201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2201] = 26
                    mem[_2201 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _2452 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2452] = 26
                        mem[_2452 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_28a198ffAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sushiAddress)
                        call sushiAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _3276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3276] = 26
                            mem[_3276 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3372 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3372 + 68] = mem[idx + _3276 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3372 + 68] = mem[_3372 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3372 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3327] = 26
                        mem[_3327 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3426 + 68] = mem[idx + _3327 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3426 + 68] = mem[_3426 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3426 + -mem[64] + 100
                    if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2480] = 26
                    mem[_2480 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3326] = 26
                        mem[_3326 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3423 + 68] = mem[idx + _3326 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3423 + 68] = mem[_3423 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3423 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3371] = 26
                    mem[_3371 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3483 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3483 + 68] = mem[idx + _3371 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3483 + 68] = mem[_3483 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3483 + -mem[64] + 100
                if devReward * 0 / totalAllocPoint / 0 / totalAllocPoint != devReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2214] = 26
                mem[_2214 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, devReward * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _2479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2479] = 26
                    mem[_2479 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _3325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3325] = 26
                        mem[_3325 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3420 + 68] = mem[idx + _3325 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3420 + 68] = mem[_3420 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3420 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3370] = 26
                    mem[_3370 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3480 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3480 + 68] = mem[idx + _3370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3480 + 68] = mem[_3480 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3480 + -mem[64] + 100
                if sub_90244617 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2500] = 26
                mem[_2500 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * 0 / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _3369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3369] = 26
                    mem[_3369 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3477 + 68] = mem[idx + _3369 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3477 + 68] = mem[_3477 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3477 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3419 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3419] = 26
                mem[_3419 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3533 + 68] = mem[idx + _3419 + 32]
                    idx = idx + 32
                    continue 
                mem[_3533 + 68] = mem[_3533 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3533 + -mem[64] + 100
            if (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / (block.number * sushiPerBlock) + (9 * bonusEndBlock * sushiPerBlock) - (10 * poolInfo[idx].field_512 * sushiPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2090 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2090] = 26
            mem[_2090 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _2116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2116 + 68] = mem[idx + _2090 + 32]
                    idx = idx + 32
                    continue 
                mem[_2116 + 68] = mem[_2116 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2116 + -mem[64] + 100
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2213] = 26
                mem[_2213 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2478] = 26
                    mem[_2478 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_28a198ffAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sushiAddress)
                    call sushiAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3322] = 26
                        mem[_3322 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3416 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3416 + 68] = mem[idx + _3322 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3416 + 68] = mem[_3416 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3416 + -mem[64] + 100
                    if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3368] = 26
                    mem[_3368 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3474 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3474 + 68] = mem[idx + _3368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3474 + 68] = mem[_3474 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3474 + -mem[64] + 100
                if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2499] = 26
                mem[_2499 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 26
                    mem[_3367 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3471 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3471 + 68] = mem[idx + _3367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3471 + 68] = mem[_3471 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3471 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3415] = 26
                mem[_3415 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3529 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3529 + 68] = mem[idx + _3415 + 32]
                    idx = idx + 32
                    continue 
                mem[_3529 + 68] = mem[_3529 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3529 + -mem[64] + 100
            if devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != devReward:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2224] = 26
            mem[_2224 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devaddr, devReward * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2498] = 26
                mem[_2498 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_28a198ffAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sushiAddress)
                call sushiAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3366] = 26
                    mem[_3366 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3468 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3468 + 68] = mem[idx + _3366 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3468 + 68] = mem[_3468 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3468 + -mem[64] + 100
                if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3414 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3414] = 26
                mem[_3414 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3526 + 68] = mem[idx + _3414 + 32]
                    idx = idx + 32
                    continue 
                mem[_3526 + 68] = mem[_3526 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3526 + -mem[64] + 100
            if sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_90244617:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2515 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2515] = 26
            mem[_2515 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_28a198ffAddress, sub_90244617 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sushiAddress)
            call sushiAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _3413 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3413] = 26
                mem[_3413 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3523 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _3523 + 68] = mem[idx + _3413 + 32]
                    idx = idx + 32
                    continue 
                mem[_3523 + 68] = mem[_3523 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3523 + -mem[64] + 100
            if 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3467] = 26
            mem[_3467 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sushiPerBlock * poolInfo[idx].field_256) + (9 * bonusEndBlock * sushiPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sushiPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3581 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _3581 + 68] = mem[idx + _3467 + 32]
                idx = idx + 32
                continue 
            mem[_3581 + 68] = mem[_3581 + 74 len 26]
            revert with memory
              from mem[64]
               len _3581 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}



}
