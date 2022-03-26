contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#
const BONUS_MULTIPLIER = 1


address owner;
address fishAddress;
address wbnbAddress;
address routerAddress;
address fundsAddress;
uint256 bonusEndBlock;
uint256 fishPerBlock;
uint256 halvingPeriod;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
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

function startBlock() payable {
    return startBlock
}

function halvingPeriod() payable {
    return halvingPeriod
}

function fishPerBlock() payable {
    return fishPerBlock
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function funds() payable {
    return fundsAddress
}

function fish() payable {
    return fishAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function fundsUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    if fundsAddress != msg.sender:
        revert with 0, 'funds: wut?'
    fundsAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentHalvFactor() payable {
    if startBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if halvingPeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require halvingPeriod
    return 2^(block.number - startBlock / halvingPeriod)
}

function getHalvFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if startBlock > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if halvingPeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require halvingPeriod
    return 2^(arg1 - startBlock / halvingPeriod)
}

function getCurrentRewardPerBlock() payable {
    if block.number <= startBlock:
        return 0
    if startBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if halvingPeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require halvingPeriod
    require 2^(block.number - startBlock / halvingPeriod)
    return (fishPerBlock / 2^(block.number - startBlock / halvingPeriod) / 10^18)
}

function getRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= startBlock:
        return 0
    if startBlock > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if halvingPeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require halvingPeriod
    require 2^(arg1 - startBlock / halvingPeriod)
    return (fishPerBlock / 2^(arg1 - startBlock / halvingPeriod) / 10^18)
}

function transferOwnership(address arg1) payable {
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        require arg2 - arg1
        if arg2 - arg1 / arg2 - arg1 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (arg2 - arg1)
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
    require bonusEndBlock - arg1
    if bonusEndBlock - arg1 / bonusEndBlock - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 < bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return (-arg1 + arg2)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function pendingFish(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
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
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if startBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if halvingPeriod <= 0:
                revert with 0, 'SafeMath: division by zero'
            require halvingPeriod
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if halvingPeriod <= 0:
            revert with 0, 'SafeMath: division by zero'
        require halvingPeriod
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
        if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2^(block.number - startBlock / halvingPeriod)
        if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if halvingPeriod <= 0:
            revert with 0, 'SafeMath: division by zero'
        require halvingPeriod
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
        if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2^(block.number - startBlock / halvingPeriod)
        if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if halvingPeriod <= 0:
            revert with 0, 'SafeMath: division by zero'
        require halvingPeriod
        if not block.number - bonusEndBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - bonusEndBlock
        if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2^(block.number - startBlock / halvingPeriod)
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
        if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2^(block.number - startBlock / halvingPeriod)
        if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number < bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if startBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if halvingPeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require halvingPeriod
    if not -poolInfo[arg1].field_512 + block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2^(block.number - startBlock / halvingPeriod)
        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require -poolInfo[arg1].field_512 + block.number
    if (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[arg1].field_512 + block.number != fishPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2^(block.number - startBlock / halvingPeriod)
        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock)
    if (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if 2^(block.number - startBlock / halvingPeriod) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 2^(block.number - startBlock / halvingPeriod)
    if not (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
    if 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2^(block.number - startBlock / halvingPeriod)
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480] = 2
                    mem[512] = fishAddress
                    mem[544] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[612] = 0
                    mem[676] = fundsAddress
                    mem[708] = block.timestamp + 1800
                    mem[644] = 160
                    mem[740] = 2
                    mem[772 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 576
                    require return_data.size >= 32
                    _1132 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                    _1159 = mem[_1132 + 576]
                    mem[ceil32(return_data.size) + 608 len floor32(mem[_1132 + 576])] = mem[_1132 + 608 len floor32(mem[_1132 + 576])]
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _1159) + ceil32(return_data.size) + 709 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _1130 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _1158 = mem[_1130 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_1130 + 576])] = mem[_1130 + 608 len floor32(mem[_1130 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1158) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _1128 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _1157 = mem[_1128 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_1128 + 576])] = mem[_1128 + 608 len floor32(mem[_1128 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1157) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _1126 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _1156 = mem[_1126 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_1126 + 576])] = mem[_1126 + 608 len floor32(mem[_1126 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1156) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _1124 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _1155 = mem[_1124 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_1124 + 576])] = mem[_1124 + 608 len floor32(mem[_1124 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1155) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _1122 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _1154 = mem[_1122 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_1122 + 576])] = mem[_1122 + 608 len floor32(mem[_1122 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1154) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _1120 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _1153 = mem[_1120 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_1120 + 576])] = mem[_1120 + 608 len floor32(mem[_1120 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1153) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not block.number - bonusEndBlock:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _1118 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _1152 = mem[_1118 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_1118 + 640])] = mem[_1118 + 672 len floor32(mem[_1118 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1152) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _1116 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _1151 = mem[_1116 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_1116 + 640])] = mem[_1116 + 672 len floor32(mem[_1116 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _1151) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
                                if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _1114 = mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _1150 = mem[_1114 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_1114 + 640])] = mem[_1114 + 672 len floor32(mem[_1114 + 640])]
                                if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _1150) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not -poolInfo[arg1].field_512 + block.number:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _1112 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _1149 = mem[_1112 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_1112 + 640])] = mem[_1112 + 672 len floor32(mem[_1112 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _1149) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        else:
                            require -poolInfo[arg1].field_512 + block.number
                            if (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[arg1].field_512 + block.number != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _1110 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _1148 = mem[_1110 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_1110 + 640])] = mem[_1110 + 672 len floor32(mem[_1110 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _1148) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock)
                                if (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _1108 = mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _1147 = mem[_1108 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_1108 + 640])] = mem[_1108 + 672 len floor32(mem[_1108 + 640])]
                                if not (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _1147) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _914 = mem[64]
            mem[64] = mem[64] + 64
            mem[_914] = 30
            mem[_914 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _917 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_917 + idx + 68] = mem[_914 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_917 + 68] = mem[_917 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _917 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _951 = mem[64]
                mem[64] = mem[64] + 64
                mem[_951] = 30
                mem[_951 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_958 + idx + 68] = mem[_951 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_958 + 68] = mem[_958 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _958 + -mem[64] + 100
                _973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_973] = 26
                mem[_973 + 32] = 'SafeMath: division by zero'
                if halvingPeriod <= 0:
                    _986 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_986 + idx + 68] = mem[_973 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_986 + 68] = mem[_986 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _986 + -mem[64] + 100
                require halvingPeriod
                _1040 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1040] = 26
                mem[_1040 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1053 + idx + 68] = mem[_1040 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1053 + 68] = mem[_1053 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1053 + -mem[64] + 100
                require totalAllocPoint
                _1091 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1091] = 26
                mem[_1091 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1109 + idx + 68] = mem[_1091 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1109 + 68] = mem[_1109 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1109 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1154] = 26
                mem[_1154 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1275 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1275]
                mem[_1275 + 32] = fishAddress
                require 1 < mem[_1275]
                mem[_1275 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1275 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1275 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1275 + 132] = 0
                mem[_1275 + 196] = fundsAddress
                mem[_1275 + 228] = block.timestamp + 1800
                mem[_1275 + 164] = 160
                mem[_1275 + 260] = mem[_1275]
                s = 0
                while s < 32 * mem[_1275]:
                    mem[_1275 + s + 292] = mem[_1275 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1275 + 260 len (32 * mem[_1275]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1275 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1275 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2040 = mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1275 + 96] <= 4294967296 and mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1275 + 96]) + 32 <= return_data.size
                mem[_1275 + ceil32(return_data.size) + 96] = mem[mem[_1275 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1275 + 96]
                _2067 = mem[_2040 + _1275 + 96]
                s = 0
                while s < 32 * _2067:
                    mem[_1275 + ceil32(return_data.size) + s + 128] = mem[_2040 + _1275 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2067) + _1275 + ceil32(return_data.size) + 192
                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2067) + _1275 + ceil32(return_data.size) + 192
                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2067) + _1275 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2067) + _1275 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 260] = mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2067) + _1275 + ceil32(return_data.size) + 260]
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _957 = mem[64]
            mem[64] = mem[64] + 64
            mem[_957] = 30
            mem[_957 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _967 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_967 + idx + 68] = mem[_957 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_967 + 68] = mem[_967 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _967 + -mem[64] + 100
            _983 = mem[64]
            mem[64] = mem[64] + 64
            mem[_983] = 26
            mem[_983 + 32] = 'SafeMath: division by zero'
            if halvingPeriod <= 0:
                _992 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_992 + idx + 68] = mem[_983 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_992 + 68] = mem[_992 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _992 + -mem[64] + 100
            require halvingPeriod
            if not block.number - poolInfo[idx].field_512:
                _1052 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1052] = 26
                mem[_1052 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1070 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1070 + idx + 68] = mem[_1052 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1070 + 68] = mem[_1070 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1070 + -mem[64] + 100
                require totalAllocPoint
                _1107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1107] = 26
                mem[_1107 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1128 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1128 + idx + 68] = mem[_1107 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1128 + 68] = mem[_1128 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1128 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1177] = 26
                mem[_1177 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1296 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1296]
                mem[_1296 + 32] = fishAddress
                require 1 < mem[_1296]
                mem[_1296 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1296 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1296 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1296 + 132] = 0
                mem[_1296 + 196] = fundsAddress
                mem[_1296 + 228] = block.timestamp + 1800
                mem[_1296 + 164] = 160
                mem[_1296 + 260] = mem[_1296]
                s = 0
                while s < 32 * mem[_1296]:
                    mem[_1296 + s + 292] = mem[_1296 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1296 + 260 len (32 * mem[_1296]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1296 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1296 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2038 = mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1296 + 96] <= 4294967296 and mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1296 + 96]) + 32 <= return_data.size
                mem[_1296 + ceil32(return_data.size) + 96] = mem[mem[_1296 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1296 + 96]
                _2066 = mem[_2038 + _1296 + 96]
                s = 0
                while s < 32 * _2066:
                    mem[_1296 + ceil32(return_data.size) + s + 128] = mem[_2038 + _1296 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2066) + _1296 + ceil32(return_data.size) + 192
                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2066) + _1296 + ceil32(return_data.size) + 192
                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2066) + _1296 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2066) + _1296 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 260] = mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2066) + _1296 + ceil32(return_data.size) + 260]
            require block.number - poolInfo[idx].field_512
            if (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) / block.number - poolInfo[idx].field_512 != fishPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock):
                _1069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1069] = 26
                mem[_1069 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1087 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1087 + idx + 68] = mem[_1069 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1087 + 68] = mem[_1087 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1087 + -mem[64] + 100
                require totalAllocPoint
                _1126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1126] = 26
                mem[_1126 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1150 + idx + 68] = mem[_1126 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1150 + 68] = mem[_1150 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1150 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1201] = 26
                mem[_1201 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1317 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1317]
                mem[_1317 + 32] = fishAddress
                require 1 < mem[_1317]
                mem[_1317 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1317 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1317 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1317 + 132] = 0
                mem[_1317 + 196] = fundsAddress
                mem[_1317 + 228] = block.timestamp + 1800
                mem[_1317 + 164] = 160
                mem[_1317 + 260] = mem[_1317]
                s = 0
                while s < 32 * mem[_1317]:
                    mem[_1317 + s + 292] = mem[_1317 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1317 + 260 len (32 * mem[_1317]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1317 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1317 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2036 = mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96] <= 4294967296 and mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96]) + 32 <= return_data.size
                mem[_1317 + ceil32(return_data.size) + 96] = mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96]
                _2065 = mem[_2036 + _1317 + 96]
                s = 0
                while s < 32 * _2065:
                    mem[_1317 + ceil32(return_data.size) + s + 128] = mem[_2036 + _1317 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2065) + _1317 + ceil32(return_data.size) + 192
                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2065) + _1317 + ceil32(return_data.size) + 192
                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2065) + _1317 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2065) + _1317 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 260] = mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2065) + _1317 + ceil32(return_data.size) + 260]
            require (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock)
            if (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1086 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1086] = 26
            mem[_1086 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1103 + idx + 68] = mem[_1086 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1103 + 68] = mem[_1103 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1103 + -mem[64] + 100
            require totalAllocPoint
            _1148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1148] = 26
            mem[_1148 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1173 + idx + 68] = mem[_1148 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1173 + 68] = mem[_1173 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1173 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1227 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1227] = 26
            mem[_1227 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1335 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1335]
            mem[_1335 + 32] = fishAddress
            require 1 < mem[_1335]
            mem[_1335 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1335 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1335 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1335 + 132] = 0
            mem[_1335 + 196] = fundsAddress
            mem[_1335 + 228] = block.timestamp + 1800
            mem[_1335 + 164] = 160
            mem[_1335 + 260] = mem[_1335]
            s = 0
            while s < 32 * mem[_1335]:
                mem[_1335 + s + 292] = mem[_1335 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1335 + 260 len (32 * mem[_1335]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1335 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1335 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2034 = mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1335 + 96] <= 4294967296 and mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1335 + 96]) + 32 <= return_data.size
            mem[_1335 + ceil32(return_data.size) + 96] = mem[mem[_1335 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1335 + 96]
            _2064 = mem[_2034 + _1335 + 96]
            s = 0
            while s < 32 * _2064:
                mem[_1335 + ceil32(return_data.size) + s + 128] = mem[_2034 + _1335 + s + 128]
                s = s + 32
                continue 
            if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2064) + _1335 + ceil32(return_data.size) + 192
                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2064) + _1335 + ceil32(return_data.size) + 192
                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2064) + _1335 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2064) + _1335 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 260] = mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2064) + _1335 + ceil32(return_data.size) + 260]
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _916 = mem[64]
            mem[64] = mem[64] + 64
            mem[_916] = 30
            mem[_916 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _923 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_923 + idx + 68] = mem[_916 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_923 + 68] = mem[_923 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _923 + -mem[64] + 100
            _942 = mem[64]
            mem[64] = mem[64] + 64
            mem[_942] = 30
            mem[_942 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _946 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_946 + idx + 68] = mem[_942 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_946 + 68] = mem[_946 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _946 + -mem[64] + 100
            _954 = mem[64]
            mem[64] = mem[64] + 64
            mem[_954] = 26
            mem[_954 + 32] = 'SafeMath: division by zero'
            if halvingPeriod <= 0:
                _964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_964 + idx + 68] = mem[_954 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_964 + 68] = mem[_964 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _964 + -mem[64] + 100
            require halvingPeriod
            if not block.number - poolInfo[idx].field_512:
                _1024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1024] = 26
                mem[_1024 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1035 + idx + 68] = mem[_1024 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1035 + 68] = mem[_1035 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1035 + -mem[64] + 100
                require totalAllocPoint
                _1061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1061] = 26
                mem[_1061 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1077 + idx + 68] = mem[_1061 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1117] = 26
                mem[_1117 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1241 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1241]
                mem[_1241 + 32] = fishAddress
                require 1 < mem[_1241]
                mem[_1241 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1241 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1241 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1241 + 132] = 0
                mem[_1241 + 196] = fundsAddress
                mem[_1241 + 228] = block.timestamp + 1800
                mem[_1241 + 164] = 160
                mem[_1241 + 260] = mem[_1241]
                s = 0
                while s < 32 * mem[_1241]:
                    mem[_1241 + s + 292] = mem[_1241 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1241 + 260 len (32 * mem[_1241]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1241 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1241 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2032 = mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1241 + 96] <= 4294967296 and mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1241 + 96]) + 32 <= return_data.size
                mem[_1241 + ceil32(return_data.size) + 96] = mem[mem[_1241 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1241 + 96]
                _2063 = mem[_2032 + _1241 + 96]
                s = 0
                while s < 32 * _2063:
                    mem[_1241 + ceil32(return_data.size) + s + 128] = mem[_2032 + _1241 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2063) + _1241 + ceil32(return_data.size) + 192
                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2063) + _1241 + ceil32(return_data.size) + 192
                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2063) + _1241 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2063) + _1241 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 260] = mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2063) + _1241 + ceil32(return_data.size) + 260]
            require block.number - poolInfo[idx].field_512
            if (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) / block.number - poolInfo[idx].field_512 != fishPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock):
                _1034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1034] = 26
                mem[_1034 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1044 + idx + 68] = mem[_1034 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1044 + 68] = mem[_1044 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1044 + -mem[64] + 100
                require totalAllocPoint
                _1075 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1075] = 26
                mem[_1075 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1095 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1095 + idx + 68] = mem[_1075 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1095 + 68] = mem[_1095 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1095 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1138] = 26
                mem[_1138 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1264 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1264]
                mem[_1264 + 32] = fishAddress
                require 1 < mem[_1264]
                mem[_1264 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1264 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1264 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1264 + 132] = 0
                mem[_1264 + 196] = fundsAddress
                mem[_1264 + 228] = block.timestamp + 1800
                mem[_1264 + 164] = 160
                mem[_1264 + 260] = mem[_1264]
                s = 0
                while s < 32 * mem[_1264]:
                    mem[_1264 + s + 292] = mem[_1264 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1264 + 260 len (32 * mem[_1264]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1264 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1264 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2030 = mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1264 + 96] <= 4294967296 and mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1264 + 96]) + 32 <= return_data.size
                mem[_1264 + ceil32(return_data.size) + 96] = mem[mem[_1264 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1264 + 96]
                _2062 = mem[_2030 + _1264 + 96]
                s = 0
                while s < 32 * _2062:
                    mem[_1264 + ceil32(return_data.size) + s + 128] = mem[_2030 + _1264 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2062) + _1264 + ceil32(return_data.size) + 192
                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2062) + _1264 + ceil32(return_data.size) + 192
                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2062) + _1264 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2062) + _1264 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 260] = mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2062) + _1264 + ceil32(return_data.size) + 260]
            require (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock)
            if (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1043 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1043] = 26
            mem[_1043 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1057 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1057 + idx + 68] = mem[_1043 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1057 + 68] = mem[_1057 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1057 + -mem[64] + 100
            require totalAllocPoint
            _1093 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1093] = 26
            mem[_1093 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1113 + idx + 68] = mem[_1093 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1113 + 68] = mem[_1113 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1113 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1165] = 26
            mem[_1165 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1285 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1285]
            mem[_1285 + 32] = fishAddress
            require 1 < mem[_1285]
            mem[_1285 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1285 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1285 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1285 + 132] = 0
            mem[_1285 + 196] = fundsAddress
            mem[_1285 + 228] = block.timestamp + 1800
            mem[_1285 + 164] = 160
            mem[_1285 + 260] = mem[_1285]
            s = 0
            while s < 32 * mem[_1285]:
                mem[_1285 + s + 292] = mem[_1285 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1285 + 260 len (32 * mem[_1285]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1285 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1285 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2028 = mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1285 + 96] <= 4294967296 and mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1285 + 96]) + 32 <= return_data.size
            mem[_1285 + ceil32(return_data.size) + 96] = mem[mem[_1285 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1285 + 96]
            _2061 = mem[_2028 + _1285 + 96]
            s = 0
            while s < 32 * _2061:
                mem[_1285 + ceil32(return_data.size) + s + 128] = mem[_2028 + _1285 + s + 128]
                s = s + 32
                continue 
            if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2061) + _1285 + ceil32(return_data.size) + 192
                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2061) + _1285 + ceil32(return_data.size) + 192
                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2061) + _1285 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2061) + _1285 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 260] = mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2061) + _1285 + ceil32(return_data.size) + 260]
        _915 = mem[64]
        mem[64] = mem[64] + 64
        mem[_915] = 30
        mem[_915 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _920 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_920 + idx + 68] = mem[_915 + idx + 32]
                idx = idx + 32
                continue 
            mem[_920 + 68] = mem[_920 + 70 len 30]
            revert with memory
              from mem[64]
               len _920 + -mem[64] + 100
        _931 = mem[64]
        mem[64] = mem[64] + 64
        mem[_931] = 30
        mem[_931 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _939 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_939 + idx + 68] = mem[_931 + idx + 32]
                idx = idx + 32
                continue 
            mem[_939 + 68] = mem[_939 + 70 len 30]
            revert with memory
              from mem[64]
               len _939 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            _991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_991] = 30
            mem[_991 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _999 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_999 + idx + 68] = mem[_991 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_999 + 68] = mem[_999 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _999 + -mem[64] + 100
            _1013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1013] = 26
            mem[_1013 + 32] = 'SafeMath: division by zero'
            if halvingPeriod <= 0:
                _1021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1021 + idx + 68] = mem[_1013 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1021 + 68] = mem[_1021 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1021 + -mem[64] + 100
            require halvingPeriod
            if not block.number - bonusEndBlock:
                _1112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1112] = 26
                mem[_1112 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1134 + idx + 68] = mem[_1112 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1134 + 68] = mem[_1134 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1134 + -mem[64] + 100
                require totalAllocPoint
                _1188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1188] = 26
                mem[_1188 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1212 + idx + 68] = mem[_1188 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1212 + 68] = mem[_1212 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1212 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1262] = 26
                mem[_1262 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1362 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1362]
                mem[_1362 + 32] = fishAddress
                require 1 < mem[_1362]
                mem[_1362 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1362 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1362 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1362 + 132] = 0
                mem[_1362 + 196] = fundsAddress
                mem[_1362 + 228] = block.timestamp + 1800
                mem[_1362 + 164] = 160
                mem[_1362 + 260] = mem[_1362]
                s = 0
                while s < 32 * mem[_1362]:
                    mem[_1362 + s + 292] = mem[_1362 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1362 + 260 len (32 * mem[_1362]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1362 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1362 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2026 = mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1362 + 96] <= 4294967296 and mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1362 + 96]) + 32 <= return_data.size
                mem[_1362 + ceil32(return_data.size) + 96] = mem[mem[_1362 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1362 + 96]
                _2060 = mem[_2026 + _1362 + 96]
                s = 0
                while s < 32 * _2060:
                    mem[_1362 + ceil32(return_data.size) + s + 128] = mem[_2026 + _1362 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2060) + _1362 + ceil32(return_data.size) + 192
                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2060) + _1362 + ceil32(return_data.size) + 192
                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2060) + _1362 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2060) + _1362 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 260] = mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2060) + _1362 + ceil32(return_data.size) + 260]
            require block.number - bonusEndBlock
            if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
                _1133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1133] = 26
                mem[_1133 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1161 + idx + 68] = mem[_1133 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1161 + 68] = mem[_1161 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1161 + -mem[64] + 100
                require totalAllocPoint
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 26
                mem[_1210 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1237 + idx + 68] = mem[_1210 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1237 + 68] = mem[_1237 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1237 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1283 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1283] = 26
                mem[_1283 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1383 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1383]
                mem[_1383 + 32] = fishAddress
                require 1 < mem[_1383]
                mem[_1383 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1383 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1383 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1383 + 132] = 0
                mem[_1383 + 196] = fundsAddress
                mem[_1383 + 228] = block.timestamp + 1800
                mem[_1383 + 164] = 160
                mem[_1383 + 260] = mem[_1383]
                s = 0
                while s < 32 * mem[_1383]:
                    mem[_1383 + s + 292] = mem[_1383 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1383 + 260 len (32 * mem[_1383]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1383 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1383 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2024 = mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1383 + 96] <= 4294967296 and mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1383 + 96]) + 32 <= return_data.size
                mem[_1383 + ceil32(return_data.size) + 96] = mem[mem[_1383 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1383 + 96]
                _2059 = mem[_2024 + _1383 + 96]
                s = 0
                while s < 32 * _2059:
                    mem[_1383 + ceil32(return_data.size) + s + 128] = mem[_2024 + _1383 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2059) + _1383 + ceil32(return_data.size) + 192
                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2059) + _1383 + ceil32(return_data.size) + 192
                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2059) + _1383 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2059) + _1383 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 260] = mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2059) + _1383 + ceil32(return_data.size) + 260]
            require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
            if (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1160] = 26
            mem[_1160 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1184 + idx + 68] = mem[_1160 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1184 + 68] = mem[_1184 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1184 + -mem[64] + 100
            require totalAllocPoint
            _1235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1235] = 26
            mem[_1235 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1258 + idx + 68] = mem[_1235 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1258 + 68] = mem[_1258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1258 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1301] = 26
            mem[_1301 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1405 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1405]
            mem[_1405 + 32] = fishAddress
            require 1 < mem[_1405]
            mem[_1405 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1405 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1405 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1405 + 132] = 0
            mem[_1405 + 196] = fundsAddress
            mem[_1405 + 228] = block.timestamp + 1800
            mem[_1405 + 164] = 160
            mem[_1405 + 260] = mem[_1405]
            s = 0
            while s < 32 * mem[_1405]:
                mem[_1405 + s + 292] = mem[_1405 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1405 + 260 len (32 * mem[_1405]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1405 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1405 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2022 = mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1405 + 96] <= 4294967296 and mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1405 + 96]) + 32 <= return_data.size
            mem[_1405 + ceil32(return_data.size) + 96] = mem[mem[_1405 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1405 + 96]
            _2058 = mem[_2022 + _1405 + 96]
            s = 0
            while s < 32 * _2058:
                mem[_1405 + ceil32(return_data.size) + s + 128] = mem[_2022 + _1405 + s + 128]
                s = s + 32
                continue 
            if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2058) + _1405 + ceil32(return_data.size) + 192
                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2058) + _1405 + ceil32(return_data.size) + 192
                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2058) + _1405 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2058) + _1405 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 260] = mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2058) + _1405 + ceil32(return_data.size) + 260]
        require bonusEndBlock - poolInfo[idx].field_512
        if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number < bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        _998 = mem[64]
        mem[64] = mem[64] + 64
        mem[_998] = 30
        mem[_998 + 32] = 'SafeMath: subtraction overflow'
        if startBlock > block.number:
            _1008 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1008 + idx + 68] = mem[_998 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1008 + 68] = mem[_1008 + 70 len 30]
            revert with memory
              from mem[64]
               len _1008 + -mem[64] + 100
        _1018 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1018] = 26
        mem[_1018 + 32] = 'SafeMath: division by zero'
        if halvingPeriod <= 0:
            _1030 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1030 + idx + 68] = mem[_1018 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1030 + 68] = mem[_1030 + 74 len 26]
            revert with memory
              from mem[64]
               len _1030 + -mem[64] + 100
        require halvingPeriod
        if not -poolInfo[idx].field_512 + block.number:
            _1132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1132] = 26
            mem[_1132 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1157 + idx + 68] = mem[_1132 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1157 + 68] = mem[_1157 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1157 + -mem[64] + 100
            require totalAllocPoint
            _1207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1207] = 26
            mem[_1207 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1232 + idx + 68] = mem[_1207 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1232 + 68] = mem[_1232 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1232 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1280 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1280] = 26
            mem[_1280 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1382 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1382]
            mem[_1382 + 32] = fishAddress
            require 1 < mem[_1382]
            mem[_1382 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1382 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1382 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1382 + 132] = 0
            mem[_1382 + 196] = fundsAddress
            mem[_1382 + 228] = block.timestamp + 1800
            mem[_1382 + 164] = 160
            mem[_1382 + 260] = mem[_1382]
            s = 0
            while s < 32 * mem[_1382]:
                mem[_1382 + s + 292] = mem[_1382 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1382 + 260 len (32 * mem[_1382]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1382 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1382 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2020 = mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1382 + 96] <= 4294967296 and mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1382 + 96]) + 32 <= return_data.size
            mem[_1382 + ceil32(return_data.size) + 96] = mem[mem[_1382 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1382 + 96]
            _2057 = mem[_2020 + _1382 + 96]
            s = 0
            while s < 32 * _2057:
                mem[_1382 + ceil32(return_data.size) + s + 128] = mem[_2020 + _1382 + s + 128]
                s = s + 32
                continue 
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2057) + _1382 + ceil32(return_data.size) + 192
                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2057) + _1382 + ceil32(return_data.size) + 192
                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2057) + _1382 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2057) + _1382 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 260] = mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2057) + _1382 + ceil32(return_data.size) + 260]
        require -poolInfo[idx].field_512 + block.number
        if (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[idx].field_512 + block.number != fishPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock):
            _1156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1156] = 26
            mem[_1156 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1180 + idx + 68] = mem[_1156 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1180 + 68] = mem[_1180 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1180 + -mem[64] + 100
            require totalAllocPoint
            _1230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1230] = 26
            mem[_1230 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1254 + idx + 68] = mem[_1230 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1254 + 68] = mem[_1254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1254 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1299 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1299] = 26
            mem[_1299 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1403 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1403]
            mem[_1403 + 32] = fishAddress
            require 1 < mem[_1403]
            mem[_1403 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1403 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1403 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1403 + 132] = 0
            mem[_1403 + 196] = fundsAddress
            mem[_1403 + 228] = block.timestamp + 1800
            mem[_1403 + 164] = 160
            mem[_1403 + 260] = mem[_1403]
            s = 0
            while s < 32 * mem[_1403]:
                mem[_1403 + s + 292] = mem[_1403 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1403 + 260 len (32 * mem[_1403]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1403 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1403 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2018 = mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1403 + 96] <= 4294967296 and mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1403 + 96]) + 32 <= return_data.size
            mem[_1403 + ceil32(return_data.size) + 96] = mem[mem[_1403 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1403 + 96]
            _2056 = mem[_2018 + _1403 + 96]
            s = 0
            while s < 32 * _2056:
                mem[_1403 + ceil32(return_data.size) + s + 128] = mem[_2018 + _1403 + s + 128]
                s = s + 32
                continue 
            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2056) + _1403 + ceil32(return_data.size) + 192
                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2056) + _1403 + ceil32(return_data.size) + 192
                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2056) + _1403 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2056) + _1403 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 260] = mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2056) + _1403 + ceil32(return_data.size) + 260]
        require (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock)
        if (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1179 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1179] = 26
        mem[_1179 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _1203 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1203 + idx + 68] = mem[_1179 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1203 + 68] = mem[_1203 + 74 len 26]
            revert with memory
              from mem[64]
               len _1203 + -mem[64] + 100
        require totalAllocPoint
        _1252 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1252] = 26
        mem[_1252 + 32] = 'SafeMath: division by zero'
        if 2^(block.number - startBlock / halvingPeriod) <= 0:
            _1276 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1276 + idx + 68] = mem[_1252 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1276 + 68] = mem[_1276 + 74 len 26]
            revert with memory
              from mem[64]
               len _1276 + -mem[64] + 100
        require 2^(block.number - startBlock / halvingPeriod)
        _1319 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1319] = 26
        mem[_1319 + 32] = 'SafeMath: division by zero'
        require ext_code.size(fishAddress)
        call fishAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
        require ext_code.size(fishAddress)
        call fishAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1423 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1423]
        mem[_1423 + 32] = fishAddress
        require 1 < mem[_1423]
        mem[_1423 + 64] = wbnbAddress
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1423 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_1423 + 100] = (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
        mem[_1423 + 132] = 0
        mem[_1423 + 196] = fundsAddress
        mem[_1423 + 228] = block.timestamp + 1800
        mem[_1423 + 164] = 160
        mem[_1423 + 260] = mem[_1423]
        s = 0
        while s < 32 * mem[_1423]:
            mem[_1423 + s + 292] = mem[_1423 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1423 + 260 len (32 * mem[_1423]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1423 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1423 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _2016 = mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
        require mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
        require mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
        require mem[mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1423 + 96] <= 4294967296 and mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1423 + 96]) + 32 <= return_data.size
        mem[_1423 + ceil32(return_data.size) + 96] = mem[mem[_1423 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1423 + 96]
        _2055 = mem[_2016 + _1423 + 96]
        s = 0
        while s < 32 * _2055:
            mem[_1423 + ceil32(return_data.size) + s + 128] = mem[_2016 + _1423 + s + 128]
            s = s + 32
            continue 
        if not (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
            mem[64] = (32 * _2055) + _1423 + ceil32(return_data.size) + 192
            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 128] = 26
            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
        else:
            require (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if 10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 229 len 31]
            mem[64] = (32 * _2055) + _1423 + ceil32(return_data.size) + 192
            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 128] = 26
            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
        ('le', ('ext_call.return_data', 0, 32), 0)
        mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 196] = 32
        idx = 0
        while idx < 26:
            mem[(32 * _2055) + _1423 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2055) + _1423 + ceil32(return_data.size) + idx + 160]
            idx = idx + 32
            continue 
        mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 260] = mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 266 len 26]
        revert with 0, 32, 26, mem[(32 * _2055) + _1423 + ceil32(return_data.size) + 260]
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_955] = 30
                mem[_955 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_959 + idx + 68] = mem[_955 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_959 + 68] = mem[_959 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _959 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_993] = 30
                    mem[_993 + 32] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        _1000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1000 + idx + 68] = mem[_993 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1000 + 68] = mem[_1000 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1000 + -mem[64] + 100
                    _1015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1015] = 26
                    mem[_1015 + 32] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        _1028 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1028 + idx + 68] = mem[_1015 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1028 + 68] = mem[_1028 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1028 + -mem[64] + 100
                    require halvingPeriod
                    _1082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1082] = 26
                    mem[_1082 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1095 + idx + 68] = mem[_1082 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1095 + 68] = mem[_1095 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1095 + -mem[64] + 100
                    require totalAllocPoint
                    _1133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1133] = 26
                    mem[_1133 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1151 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1151 + idx + 68] = mem[_1133 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1151 + 68] = mem[_1151 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1151 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1196 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1196] = 26
                    mem[_1196 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1317]
                    mem[_1317 + 32] = fishAddress
                    require 1 < mem[_1317]
                    mem[_1317 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1317 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1317 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1317 + 132] = 0
                    mem[_1317 + 196] = fundsAddress
                    mem[_1317 + 228] = block.timestamp + 1800
                    mem[_1317 + 164] = 160
                    mem[_1317 + 260] = mem[_1317]
                    s = 0
                    while s < 32 * mem[_1317]:
                        mem[_1317 + s + 292] = mem[_1317 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1317 + 260 len (32 * mem[_1317]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1317 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1317 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2086 = mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96] <= 4294967296 and mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96]) + 32 <= return_data.size
                    mem[_1317 + ceil32(return_data.size) + 96] = mem[mem[_1317 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1317 + 96]
                    _2113 = mem[_2086 + _1317 + 96]
                    s = 0
                    while s < 32 * _2113:
                        mem[_1317 + ceil32(return_data.size) + s + 128] = mem[_2086 + _1317 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2113) + _1317 + ceil32(return_data.size) + 192
                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2113) + _1317 + ceil32(return_data.size) + 192
                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2113) + _1317 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2113) + _1317 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 260] = mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2113) + _1317 + ceil32(return_data.size) + 260]
                require block.number - poolInfo[idx].field_512
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_999] = 30
                mem[_999 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _1009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1009 + idx + 68] = mem[_999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1009 + 68] = mem[_1009 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1009 + -mem[64] + 100
                _1025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1025] = 26
                mem[_1025 + 32] = 'SafeMath: division by zero'
                if halvingPeriod <= 0:
                    _1034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1034 + idx + 68] = mem[_1025 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1034 + 68] = mem[_1034 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1034 + -mem[64] + 100
                require halvingPeriod
                if not block.number - poolInfo[idx].field_512:
                    _1094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1094] = 26
                    mem[_1094 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1112 + idx + 68] = mem[_1094 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1112 + 68] = mem[_1112 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1112 + -mem[64] + 100
                    require totalAllocPoint
                    _1149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1149] = 26
                    mem[_1149 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1170 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1170 + idx + 68] = mem[_1149 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1170 + 68] = mem[_1170 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1170 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1219] = 26
                    mem[_1219 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1338 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1338]
                    mem[_1338 + 32] = fishAddress
                    require 1 < mem[_1338]
                    mem[_1338 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1338 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1338 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1338 + 132] = 0
                    mem[_1338 + 196] = fundsAddress
                    mem[_1338 + 228] = block.timestamp + 1800
                    mem[_1338 + 164] = 160
                    mem[_1338 + 260] = mem[_1338]
                    s = 0
                    while s < 32 * mem[_1338]:
                        mem[_1338 + s + 292] = mem[_1338 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1338 + 260 len (32 * mem[_1338]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1338 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1338 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2084 = mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1338 + 96] <= 4294967296 and mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1338 + 96]) + 32 <= return_data.size
                    mem[_1338 + ceil32(return_data.size) + 96] = mem[mem[_1338 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1338 + 96]
                    _2112 = mem[_2084 + _1338 + 96]
                    s = 0
                    while s < 32 * _2112:
                        mem[_1338 + ceil32(return_data.size) + s + 128] = mem[_2084 + _1338 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2112) + _1338 + ceil32(return_data.size) + 192
                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2112) + _1338 + ceil32(return_data.size) + 192
                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2112) + _1338 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2112) + _1338 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 260] = mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2112) + _1338 + ceil32(return_data.size) + 260]
                require block.number - poolInfo[idx].field_512
                if (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) / block.number - poolInfo[idx].field_512 != fishPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock):
                    _1111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1111] = 26
                    mem[_1111 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1129 + idx + 68] = mem[_1111 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1129 + 68] = mem[_1129 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1129 + -mem[64] + 100
                    require totalAllocPoint
                    _1168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1168] = 26
                    mem[_1168 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1192 + idx + 68] = mem[_1168 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1192 + 68] = mem[_1192 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1192 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1243] = 26
                    mem[_1243 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1359 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1359]
                    mem[_1359 + 32] = fishAddress
                    require 1 < mem[_1359]
                    mem[_1359 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1359 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1359 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1359 + 132] = 0
                    mem[_1359 + 196] = fundsAddress
                    mem[_1359 + 228] = block.timestamp + 1800
                    mem[_1359 + 164] = 160
                    mem[_1359 + 260] = mem[_1359]
                    s = 0
                    while s < 32 * mem[_1359]:
                        mem[_1359 + s + 292] = mem[_1359 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1359 + 260 len (32 * mem[_1359]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1359 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1359 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2082 = mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1359 + 96] <= 4294967296 and mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1359 + 96]) + 32 <= return_data.size
                    mem[_1359 + ceil32(return_data.size) + 96] = mem[mem[_1359 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1359 + 96]
                    _2111 = mem[_2082 + _1359 + 96]
                    s = 0
                    while s < 32 * _2111:
                        mem[_1359 + ceil32(return_data.size) + s + 128] = mem[_2082 + _1359 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2111) + _1359 + ceil32(return_data.size) + 192
                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2111) + _1359 + ceil32(return_data.size) + 192
                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2111) + _1359 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2111) + _1359 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 260] = mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2111) + _1359 + ceil32(return_data.size) + 260]
                require (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock)
                if (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1128] = 26
                mem[_1128 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1145 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1145 + idx + 68] = mem[_1128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1145 + 68] = mem[_1145 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1145 + -mem[64] + 100
                require totalAllocPoint
                _1190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1190] = 26
                mem[_1190 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1215 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1215 + idx + 68] = mem[_1190 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1215 + 68] = mem[_1215 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1215 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1269] = 26
                mem[_1269 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1377 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1377]
                mem[_1377 + 32] = fishAddress
                require 1 < mem[_1377]
                mem[_1377 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1377 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1377 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1377 + 132] = 0
                mem[_1377 + 196] = fundsAddress
                mem[_1377 + 228] = block.timestamp + 1800
                mem[_1377 + 164] = 160
                mem[_1377 + 260] = mem[_1377]
                s = 0
                while s < 32 * mem[_1377]:
                    mem[_1377 + s + 292] = mem[_1377 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1377 + 260 len (32 * mem[_1377]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1377 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1377 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2080 = mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1377 + 96] <= 4294967296 and mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1377 + 96]) + 32 <= return_data.size
                mem[_1377 + ceil32(return_data.size) + 96] = mem[mem[_1377 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1377 + 96]
                _2110 = mem[_2080 + _1377 + 96]
                s = 0
                while s < 32 * _2110:
                    mem[_1377 + ceil32(return_data.size) + s + 128] = mem[_2080 + _1377 + s + 128]
                    s = s + 32
                    continue 
                if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2110) + _1377 + ceil32(return_data.size) + 192
                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2110) + _1377 + ceil32(return_data.size) + 192
                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2110) + _1377 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2110) + _1377 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 260] = mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2110) + _1377 + ceil32(return_data.size) + 260]
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_957] = 30
                mem[_957 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _965 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_965 + idx + 68] = mem[_957 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_965 + 68] = mem[_965 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _965 + -mem[64] + 100
                _984 = mem[64]
                mem[64] = mem[64] + 64
                mem[_984] = 30
                mem[_984 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_988 + idx + 68] = mem[_984 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_988 + 68] = mem[_988 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _988 + -mem[64] + 100
                _996 = mem[64]
                mem[64] = mem[64] + 64
                mem[_996] = 26
                mem[_996 + 32] = 'SafeMath: division by zero'
                if halvingPeriod <= 0:
                    _1006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1006 + idx + 68] = mem[_996 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1006 + 68] = mem[_1006 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1006 + -mem[64] + 100
                require halvingPeriod
                if not block.number - poolInfo[idx].field_512:
                    _1066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1066] = 26
                    mem[_1066 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1077 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1077 + idx + 68] = mem[_1066 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1077 + 68] = mem[_1077 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1077 + -mem[64] + 100
                    require totalAllocPoint
                    _1103 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1103] = 26
                    mem[_1103 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1119 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1119 + idx + 68] = mem[_1103 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1119 + 68] = mem[_1119 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1119 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1159] = 26
                    mem[_1159 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1283]
                    mem[_1283 + 32] = fishAddress
                    require 1 < mem[_1283]
                    mem[_1283 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1283 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1283 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1283 + 132] = 0
                    mem[_1283 + 196] = fundsAddress
                    mem[_1283 + 228] = block.timestamp + 1800
                    mem[_1283 + 164] = 160
                    mem[_1283 + 260] = mem[_1283]
                    s = 0
                    while s < 32 * mem[_1283]:
                        mem[_1283 + s + 292] = mem[_1283 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1283 + 260 len (32 * mem[_1283]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1283 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1283 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2078 = mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1283 + 96] <= 4294967296 and mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1283 + 96]) + 32 <= return_data.size
                    mem[_1283 + ceil32(return_data.size) + 96] = mem[mem[_1283 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1283 + 96]
                    _2109 = mem[_2078 + _1283 + 96]
                    s = 0
                    while s < 32 * _2109:
                        mem[_1283 + ceil32(return_data.size) + s + 128] = mem[_2078 + _1283 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2109) + _1283 + ceil32(return_data.size) + 192
                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2109) + _1283 + ceil32(return_data.size) + 192
                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2109) + _1283 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2109) + _1283 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 260] = mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2109) + _1283 + ceil32(return_data.size) + 260]
                require block.number - poolInfo[idx].field_512
                if (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) / block.number - poolInfo[idx].field_512 != fishPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock):
                    _1076 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1076] = 26
                    mem[_1076 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1086 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1086 + idx + 68] = mem[_1076 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1086 + 68] = mem[_1086 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1086 + -mem[64] + 100
                    require totalAllocPoint
                    _1117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1117] = 26
                    mem[_1117 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1137 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1137 + idx + 68] = mem[_1117 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1137 + 68] = mem[_1137 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1137 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1180] = 26
                    mem[_1180 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1306 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1306]
                    mem[_1306 + 32] = fishAddress
                    require 1 < mem[_1306]
                    mem[_1306 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1306 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1306 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1306 + 132] = 0
                    mem[_1306 + 196] = fundsAddress
                    mem[_1306 + 228] = block.timestamp + 1800
                    mem[_1306 + 164] = 160
                    mem[_1306 + 260] = mem[_1306]
                    s = 0
                    while s < 32 * mem[_1306]:
                        mem[_1306 + s + 292] = mem[_1306 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1306 + 260 len (32 * mem[_1306]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1306 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1306 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2076 = mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1306 + 96] <= 4294967296 and mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1306 + 96]) + 32 <= return_data.size
                    mem[_1306 + ceil32(return_data.size) + 96] = mem[mem[_1306 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1306 + 96]
                    _2108 = mem[_2076 + _1306 + 96]
                    s = 0
                    while s < 32 * _2108:
                        mem[_1306 + ceil32(return_data.size) + s + 128] = mem[_2076 + _1306 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2108) + _1306 + ceil32(return_data.size) + 192
                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2108) + _1306 + ceil32(return_data.size) + 192
                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2108) + _1306 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2108) + _1306 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 260] = mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2108) + _1306 + ceil32(return_data.size) + 260]
                require (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock)
                if (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (poolInfo[idx].field_512 * fishPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1085 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1085] = 26
                mem[_1085 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1099 + idx + 68] = mem[_1085 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1099 + 68] = mem[_1099 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1099 + -mem[64] + 100
                require totalAllocPoint
                _1135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1135] = 26
                mem[_1135 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1155 + idx + 68] = mem[_1135 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1155 + 68] = mem[_1155 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1155 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1207] = 26
                mem[_1207 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1327 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1327]
                mem[_1327 + 32] = fishAddress
                require 1 < mem[_1327]
                mem[_1327 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1327 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1327 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1327 + 132] = 0
                mem[_1327 + 196] = fundsAddress
                mem[_1327 + 228] = block.timestamp + 1800
                mem[_1327 + 164] = 160
                mem[_1327 + 260] = mem[_1327]
                s = 0
                while s < 32 * mem[_1327]:
                    mem[_1327 + s + 292] = mem[_1327 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1327 + 260 len (32 * mem[_1327]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1327 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1327 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2074 = mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1327 + 96] <= 4294967296 and mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1327 + 96]) + 32 <= return_data.size
                mem[_1327 + ceil32(return_data.size) + 96] = mem[mem[_1327 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1327 + 96]
                _2107 = mem[_2074 + _1327 + 96]
                s = 0
                while s < 32 * _2107:
                    mem[_1327 + ceil32(return_data.size) + s + 128] = mem[_2074 + _1327 + s + 128]
                    s = s + 32
                    continue 
                if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2107) + _1327 + ceil32(return_data.size) + 192
                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2107) + _1327 + ceil32(return_data.size) + 192
                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2107) + _1327 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2107) + _1327 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 260] = mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2107) + _1327 + ceil32(return_data.size) + 260]
            _956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_956] = 30
            mem[_956 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _962 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_962 + idx + 68] = mem[_956 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_962 + 68] = mem[_962 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _962 + -mem[64] + 100
            _973 = mem[64]
            mem[64] = mem[64] + 64
            mem[_973] = 30
            mem[_973 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _981 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_981 + idx + 68] = mem[_973 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_981 + 68] = mem[_981 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _981 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _1033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1033] = 30
                mem[_1033 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _1041 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1041 + idx + 68] = mem[_1033 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1041 + 68] = mem[_1041 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1041 + -mem[64] + 100
                _1055 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1055] = 26
                mem[_1055 + 32] = 'SafeMath: division by zero'
                if halvingPeriod <= 0:
                    _1063 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1063 + idx + 68] = mem[_1055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1063 + 68] = mem[_1063 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1063 + -mem[64] + 100
                require halvingPeriod
                if not block.number - bonusEndBlock:
                    _1154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1154] = 26
                    mem[_1154 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1176 + idx + 68] = mem[_1154 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1176 + 68] = mem[_1176 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1176 + -mem[64] + 100
                    require totalAllocPoint
                    _1230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1230] = 26
                    mem[_1230 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1254 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1254 + idx + 68] = mem[_1230 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1254 + 68] = mem[_1254 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1254 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1304 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1304] = 26
                    mem[_1304 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1404 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1404]
                    mem[_1404 + 32] = fishAddress
                    require 1 < mem[_1404]
                    mem[_1404 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1404 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1404 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1404 + 132] = 0
                    mem[_1404 + 196] = fundsAddress
                    mem[_1404 + 228] = block.timestamp + 1800
                    mem[_1404 + 164] = 160
                    mem[_1404 + 260] = mem[_1404]
                    s = 0
                    while s < 32 * mem[_1404]:
                        mem[_1404 + s + 292] = mem[_1404 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1404 + 260 len (32 * mem[_1404]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1404 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1404 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2072 = mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1404 + 96] <= 4294967296 and mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1404 + 96]) + 32 <= return_data.size
                    mem[_1404 + ceil32(return_data.size) + 96] = mem[mem[_1404 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1404 + 96]
                    _2106 = mem[_2072 + _1404 + 96]
                    s = 0
                    while s < 32 * _2106:
                        mem[_1404 + ceil32(return_data.size) + s + 128] = mem[_2072 + _1404 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2106) + _1404 + ceil32(return_data.size) + 192
                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2106) + _1404 + ceil32(return_data.size) + 192
                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2106) + _1404 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2106) + _1404 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 260] = mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2106) + _1404 + ceil32(return_data.size) + 260]
                require block.number - bonusEndBlock
                if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
                    _1175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1175] = 26
                    mem[_1175 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1203 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1203 + idx + 68] = mem[_1175 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1203 + 68] = mem[_1203 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1203 + -mem[64] + 100
                    require totalAllocPoint
                    _1252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1252] = 26
                    mem[_1252 + 32] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        _1279 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1279 + idx + 68] = mem[_1252 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1279 + 68] = mem[_1279 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1279 + -mem[64] + 100
                    require 2^(block.number - startBlock / halvingPeriod)
                    _1325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1325] = 26
                    mem[_1325 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1425]
                    mem[_1425 + 32] = fishAddress
                    require 1 < mem[_1425]
                    mem[_1425 + 64] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1425 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_1425 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[_1425 + 132] = 0
                    mem[_1425 + 196] = fundsAddress
                    mem[_1425 + 228] = block.timestamp + 1800
                    mem[_1425 + 164] = 160
                    mem[_1425 + 260] = mem[_1425]
                    s = 0
                    while s < 32 * mem[_1425]:
                        mem[_1425 + s + 292] = mem[_1425 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1425 + 260 len (32 * mem[_1425]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1425 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1425 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _2070 = mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1425 + 96] <= 4294967296 and mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1425 + 96]) + 32 <= return_data.size
                    mem[_1425 + ceil32(return_data.size) + 96] = mem[mem[_1425 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1425 + 96]
                    _2105 = mem[_2070 + _1425 + 96]
                    s = 0
                    while s < 32 * _2105:
                        mem[_1425 + ceil32(return_data.size) + s + 128] = mem[_2070 + _1425 + s + 128]
                        s = s + 32
                        continue 
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        mem[64] = (32 * _2105) + _1425 + ceil32(return_data.size) + 192
                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 229 len 31]
                        mem[64] = (32 * _2105) + _1425 + ceil32(return_data.size) + 192
                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 128] = 26
                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                    ('le', ('ext_call.return_data', 0, 32), 0)
                    mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 196] = 32
                    idx = 0
                    while idx < 26:
                        mem[(32 * _2105) + _1425 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2105) + _1425 + ceil32(return_data.size) + idx + 160]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 260] = mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 266 len 26]
                    revert with 0, 32, 26, mem[(32 * _2105) + _1425 + ceil32(return_data.size) + 260]
                require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
                if (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1202] = 26
                mem[_1202 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1226 + idx + 68] = mem[_1202 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1226 + 68] = mem[_1226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1226 + -mem[64] + 100
                require totalAllocPoint
                _1277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1277] = 26
                mem[_1277 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1300 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1300 + idx + 68] = mem[_1277 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1300 + 68] = mem[_1300 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1300 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1343] = 26
                mem[_1343 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1447 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1447]
                mem[_1447 + 32] = fishAddress
                require 1 < mem[_1447]
                mem[_1447 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1447 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1447 + 100] = (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1447 + 132] = 0
                mem[_1447 + 196] = fundsAddress
                mem[_1447 + 228] = block.timestamp + 1800
                mem[_1447 + 164] = 160
                mem[_1447 + 260] = mem[_1447]
                s = 0
                while s < 32 * mem[_1447]:
                    mem[_1447 + s + 292] = mem[_1447 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1447 + 260 len (32 * mem[_1447]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1447 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1447 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2068 = mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1447 + 96] <= 4294967296 and mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1447 + 96]) + 32 <= return_data.size
                mem[_1447 + ceil32(return_data.size) + 96] = mem[mem[_1447 + 96 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1447 + 96]
                _2104 = mem[_2068 + _1447 + 96]
                s = 0
                while s < 32 * _2104:
                    mem[_1447 + ceil32(return_data.size) + s + 128] = mem[_2068 + _1447 + s + 128]
                    s = s + 32
                    continue 
                if not (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2104) + _1447 + ceil32(return_data.size) + 192
                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2104) + _1447 + ceil32(return_data.size) + 192
                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[idx].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2104) + _1447 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2104) + _1447 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 260] = mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2104) + _1447 + ceil32(return_data.size) + 260]
            require bonusEndBlock - poolInfo[idx].field_512
            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            _1040 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1040] = 30
            mem[_1040 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1050 + idx + 68] = mem[_1040 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            _1060 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1060] = 26
            mem[_1060 + 32] = 'SafeMath: division by zero'
            if halvingPeriod <= 0:
                _1072 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1072 + idx + 68] = mem[_1060 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1072 + 68] = mem[_1072 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1072 + -mem[64] + 100
            require halvingPeriod
            if not -poolInfo[idx].field_512 + block.number:
                _1174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1174] = 26
                mem[_1174 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1199 + idx + 68] = mem[_1174 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1199 + 68] = mem[_1199 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1199 + -mem[64] + 100
                require totalAllocPoint
                _1249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1249] = 26
                mem[_1249 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1274 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1274 + idx + 68] = mem[_1249 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1274 + 68] = mem[_1274 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1274 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1322] = 26
                mem[_1322 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1424 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1424]
                mem[_1424 + 32] = fishAddress
                require 1 < mem[_1424]
                mem[_1424 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1424 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1424 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1424 + 132] = 0
                mem[_1424 + 196] = fundsAddress
                mem[_1424 + 228] = block.timestamp + 1800
                mem[_1424 + 164] = 160
                mem[_1424 + 260] = mem[_1424]
                s = 0
                while s < 32 * mem[_1424]:
                    mem[_1424 + s + 292] = mem[_1424 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1424 + 260 len (32 * mem[_1424]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1424 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1424 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2066 = mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1424 + 96] <= 4294967296 and mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1424 + 96]) + 32 <= return_data.size
                mem[_1424 + ceil32(return_data.size) + 96] = mem[mem[_1424 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1424 + 96]
                _2103 = mem[_2066 + _1424 + 96]
                s = 0
                while s < 32 * _2103:
                    mem[_1424 + ceil32(return_data.size) + s + 128] = mem[_2066 + _1424 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2103) + _1424 + ceil32(return_data.size) + 192
                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2103) + _1424 + ceil32(return_data.size) + 192
                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2103) + _1424 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2103) + _1424 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 260] = mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2103) + _1424 + ceil32(return_data.size) + 260]
            require -poolInfo[idx].field_512 + block.number
            if (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[idx].field_512 + block.number != fishPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock):
                _1198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1198] = 26
                mem[_1198 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1222 + idx + 68] = mem[_1198 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1222 + 68] = mem[_1222 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1222 + -mem[64] + 100
                require totalAllocPoint
                _1272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1272] = 26
                mem[_1272 + 32] = 'SafeMath: division by zero'
                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                    _1296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1296 + idx + 68] = mem[_1272 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1296 + 68] = mem[_1296 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1296 + -mem[64] + 100
                require 2^(block.number - startBlock / halvingPeriod)
                _1341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1341] = 26
                mem[_1341 + 32] = 'SafeMath: division by zero'
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                require ext_code.size(fishAddress)
                call fishAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1445 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1445]
                mem[_1445 + 32] = fishAddress
                require 1 < mem[_1445]
                mem[_1445 + 64] = wbnbAddress
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1445 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_1445 + 100] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                mem[_1445 + 132] = 0
                mem[_1445 + 196] = fundsAddress
                mem[_1445 + 228] = block.timestamp + 1800
                mem[_1445 + 164] = 160
                mem[_1445 + 260] = mem[_1445]
                s = 0
                while s < 32 * mem[_1445]:
                    mem[_1445 + s + 292] = mem[_1445 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1445 + 260 len (32 * mem[_1445]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1445 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1445 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2064 = mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                require mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                require mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                require mem[mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1445 + 96] <= 4294967296 and mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1445 + 96]) + 32 <= return_data.size
                mem[_1445 + ceil32(return_data.size) + 96] = mem[mem[_1445 + 96 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1445 + 96]
                _2102 = mem[_2064 + _1445 + 96]
                s = 0
                while s < 32 * _2102:
                    mem[_1445 + ceil32(return_data.size) + s + 128] = mem[_2064 + _1445 + s + 128]
                    s = s + 32
                    continue 
                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                    mem[64] = (32 * _2102) + _1445 + ceil32(return_data.size) + 192
                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                else:
                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 229 len 31]
                    mem[64] = (32 * _2102) + _1445 + ceil32(return_data.size) + 192
                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 128] = 26
                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                ('le', ('ext_call.return_data', 0, 32), 0)
                mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 196] = 32
                idx = 0
                while idx < 26:
                    mem[(32 * _2102) + _1445 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2102) + _1445 + ceil32(return_data.size) + idx + 160]
                    idx = idx + 32
                    continue 
                mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 260] = mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 266 len 26]
                revert with 0, 32, 26, mem[(32 * _2102) + _1445 + ceil32(return_data.size) + 260]
            require (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock)
            if (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1221] = 26
            mem[_1221 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1245 + idx + 68] = mem[_1221 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1245 + 68] = mem[_1245 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1245 + -mem[64] + 100
            require totalAllocPoint
            _1294 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1294] = 26
            mem[_1294 + 32] = 'SafeMath: division by zero'
            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                _1318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1318 + idx + 68] = mem[_1294 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1318 + 68] = mem[_1318 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1318 + -mem[64] + 100
            require 2^(block.number - startBlock / halvingPeriod)
            _1361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1361] = 26
            mem[_1361 + 32] = 'SafeMath: division by zero'
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            require ext_code.size(fishAddress)
            call fishAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1465 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1465]
            mem[_1465 + 32] = fishAddress
            require 1 < mem[_1465]
            mem[_1465 + 64] = wbnbAddress
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1465 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_1465 + 100] = (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
            mem[_1465 + 132] = 0
            mem[_1465 + 196] = fundsAddress
            mem[_1465 + 228] = block.timestamp + 1800
            mem[_1465 + 164] = 160
            mem[_1465 + 260] = mem[_1465]
            s = 0
            while s < 32 * mem[_1465]:
                mem[_1465 + s + 292] = mem[_1465 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, mem[_1465 + 260 len (32 * mem[_1465]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1465 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1465 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _2062 = mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
            require mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
            require mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
            require mem[mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1465 + 96] <= 4294967296 and mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1465 + 96]) + 32 <= return_data.size
            mem[_1465 + ceil32(return_data.size) + 96] = mem[mem[_1465 + 96 len 4], Mask(224, 32, (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + _1465 + 96]
            _2101 = mem[_2062 + _1465 + 96]
            s = 0
            while s < 32 * _2101:
                mem[_1465 + ceil32(return_data.size) + s + 128] = mem[_2062 + _1465 + s + 128]
                s = s + 32
                continue 
            if not (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                mem[64] = (32 * _2101) + _1465 + ceil32(return_data.size) + 192
                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            else:
                require (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                if 10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 229 len 31]
                mem[64] = (32 * _2101) + _1465 + ceil32(return_data.size) + 192
                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 128] = 26
                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * fishPerBlock * poolInfo[idx].field_256) + (block.number * fishPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
            ('le', ('ext_call.return_data', 0, 32), 0)
            mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 196] = 32
            idx = 0
            while idx < 26:
                mem[(32 * _2101) + _1465 + ceil32(return_data.size) + idx + 260] = mem[(32 * _2101) + _1465 + ceil32(return_data.size) + idx + 160]
                idx = idx + 32
                continue 
            mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 260] = mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 266 len 26]
            revert with 0, 32, 26, mem[(32 * _2101) + _1465 + ceil32(return_data.size) + 260]
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[32] = sha3(arg1, 9)
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    mem[0] = 8
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(fishAddress)
            staticcall fishAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(fishAddress)
            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                call fishAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
            else:
                call fishAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(fishAddress)
            staticcall fishAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(fishAddress)
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                call fishAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
            else:
                call fishAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(msg.sender)].field_0 -= arg2
        if not userInfo[arg1][address(msg.sender)].field_0:
            userInfo[arg1][address(msg.sender)].field_256 = 0
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fishAddress)
                staticcall fishAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(fishAddress)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fishAddress)
                staticcall fishAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(fishAddress)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2^(block.number - startBlock / halvingPeriod)
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480] = 2
                    mem[512] = fishAddress
                    mem[544] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[612] = 0
                    mem[676] = fundsAddress
                    mem[708] = block.timestamp + 1800
                    mem[644] = 160
                    mem[740] = 2
                    mem[772 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 576
                    require return_data.size >= 32
                    _15265 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                    _15452 = mem[_15265 + 576]
                    mem[ceil32(return_data.size) + 608 len floor32(mem[_15265 + 576])] = mem[_15265 + 608 len floor32(mem[_15265 + 576])]
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _15452) + ceil32(return_data.size) + 709 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(fishAddress)
                        staticcall fishAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(fishAddress)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call fishAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call fishAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _15452) + ceil32(return_data.size) + 773 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(fishAddress)
                        staticcall fishAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(fishAddress)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call fishAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call fishAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _15452) + ceil32(return_data.size) + 965 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _15452) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[(32 * _15452) + ceil32(return_data.size) + 1156 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[(32 * _15452) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _15452) + ceil32(return_data.size) + 1124]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15452) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _15263 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _15451 = mem[_15263 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_15263 + 576])] = mem[_15263 + 608 len floor32(mem[_15263 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15451) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15451) + ceil32(return_data.size) + 773 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15451) + ceil32(return_data.size) + 965 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _15451) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[(32 * _15451) + ceil32(return_data.size) + 1156 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[(32 * _15451) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _15451) + ceil32(return_data.size) + 1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15451) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _15261 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _15450 = mem[_15261 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_15261 + 576])] = mem[_15261 + 608 len floor32(mem[_15261 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15450) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15450) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15450) + ceil32(return_data.size) + 965 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15450) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15450) + ceil32(return_data.size) + 1156 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15450) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15450) + ceil32(return_data.size) + 1124]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15450) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _15259 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _15449 = mem[_15259 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_15259 + 576])] = mem[_15259 + 608 len floor32(mem[_15259 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15449) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15449) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15449) + ceil32(return_data.size) + 965 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15449) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15449) + ceil32(return_data.size) + 1156 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15449) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15449) + ceil32(return_data.size) + 1124]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15449) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _15257 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _15448 = mem[_15257 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_15257 + 576])] = mem[_15257 + 608 len floor32(mem[_15257 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15448) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15448) + ceil32(return_data.size) + 773 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _15448) + ceil32(return_data.size) + 965 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _15448) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[(32 * _15448) + ceil32(return_data.size) + 1156 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[(32 * _15448) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _15448) + ceil32(return_data.size) + 1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15448) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _15255 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _15447 = mem[_15255 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_15255 + 576])] = mem[_15255 + 608 len floor32(mem[_15255 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15447) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15447) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15447) + ceil32(return_data.size) + 965 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15447) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15447) + ceil32(return_data.size) + 1156 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15447) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15447) + ceil32(return_data.size) + 1124]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15447) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _15253 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _15446 = mem[_15253 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_15253 + 576])] = mem[_15253 + 608 len floor32(mem[_15253 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15446) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15446) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15446) + ceil32(return_data.size) + 965 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15446) + ceil32(return_data.size) + 1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15446) + ceil32(return_data.size) + 1156 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15446) + ceil32(return_data.size) + 1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15446) + ceil32(return_data.size) + 1124]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15446) + ceil32(return_data.size) + ceil32(return_data.size) + 1203 len 22]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not block.number - bonusEndBlock:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _15251 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _15445 = mem[_15251 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_15251 + 640])] = mem[_15251 + 672 len floor32(mem[_15251 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15445) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15445) + ceil32(return_data.size) + 837 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15445) + ceil32(return_data.size) + 1029 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15445) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15445) + ceil32(return_data.size) + 1220 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15445) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15445) + ceil32(return_data.size) + 1188]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15445) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _15249 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _15444 = mem[_15249 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_15249 + 640])] = mem[_15249 + 672 len floor32(mem[_15249 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15444) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15444) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15444) + ceil32(return_data.size) + 1029 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _15444) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[(32 * _15444) + ceil32(return_data.size) + 1220 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _15444) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15444) + ceil32(return_data.size) + 1188]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15444) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
                            else:
                                require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
                                if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _15247 = mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _15443 = mem[_15247 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_15247 + 640])] = mem[_15247 + 672 len floor32(mem[_15247 + 640])]
                                if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15443) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15443) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15443) + ceil32(return_data.size) + 1029 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _15443) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[(32 * _15443) + ceil32(return_data.size) + 1220 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _15443) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15443) + ceil32(return_data.size) + 1188]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15443) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not -poolInfo[arg1].field_512 + block.number:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _15245 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _15442 = mem[_15245 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_15245 + 640])] = mem[_15245 + 672 len floor32(mem[_15245 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15442) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15442) + ceil32(return_data.size) + 837 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _15442) + ceil32(return_data.size) + 1029 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _15442) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[(32 * _15442) + ceil32(return_data.size) + 1220 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _15442) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _15442) + ceil32(return_data.size) + 1188]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15442) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
                        else:
                            require -poolInfo[arg1].field_512 + block.number
                            if (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[arg1].field_512 + block.number != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _15243 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _15441 = mem[_15243 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_15243 + 640])] = mem[_15243 + 672 len floor32(mem[_15243 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15441) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15441) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15441) + ceil32(return_data.size) + 1029 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _15441) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[(32 * _15441) + ceil32(return_data.size) + 1220 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _15441) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15441) + ceil32(return_data.size) + 1188]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15441) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock)
                                if (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _15241 = mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _15440 = mem[_15241 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_15241 + 640])] = mem[_15241 + 672 len floor32(mem[_15241 + 640])]
                                if not (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15440) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15440) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _15440) + ceil32(return_data.size) + 1029 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _15440) + ceil32(return_data.size) + 1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[(32 * _15440) + ceil32(return_data.size) + 1220 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _15440) + ceil32(return_data.size) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15440) + ceil32(return_data.size) + 1188]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15440) + ceil32(return_data.size) + ceil32(return_data.size) + 1267 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[32] = sha3(arg1, 9)
    mem[0] = 8
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fishAddress)
                staticcall fishAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(fishAddress)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fishAddress)
                staticcall fishAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(fishAddress)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call fishAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[544 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)].field_0 += arg2
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fishAddress)
                    staticcall fishAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(fishAddress)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call fishAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call fishAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fishAddress)
                    staticcall fishAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(fishAddress)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call fishAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call fishAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[544 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if 2^(block.number - startBlock / halvingPeriod) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2^(block.number - startBlock / halvingPeriod)
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fishAddress)
                    call fishAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480] = 2
                    mem[512] = fishAddress
                    mem[544] = wbnbAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                    mem[612] = 0
                    mem[676] = fundsAddress
                    mem[708] = block.timestamp + 1800
                    mem[644] = 160
                    mem[740] = 2
                    mem[772 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 576
                    require return_data.size >= 32
                    _14053 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                    require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                    require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                    _14180 = mem[_14053 + 576]
                    mem[ceil32(return_data.size) + 608 len floor32(mem[_14053 + 576])] = mem[_14053 + 608 len floor32(mem[_14053 + 576])]
                    if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _14180) + ceil32(return_data.size) + 709 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _14180) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[(32 * _14180) + ceil32(return_data.size) + 992 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[(32 * _14180) + ceil32(return_data.size) + 964 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[(32 * _14180) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14180) + ceil32(return_data.size) + 900]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14180) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _14180) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _14180) + ceil32(return_data.size) + 773 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fishAddress)
                            staticcall fishAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(fishAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call fishAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _14180) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[(32 * _14180) + ceil32(return_data.size) + 1120 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[(32 * _14180) + ceil32(return_data.size) + 1092 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[(32 * _14180) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14180) + ceil32(return_data.size) + 1028]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14180) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _14180) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _14051 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _14179 = mem[_14051 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_14051 + 576])] = mem[_14051 + 608 len floor32(mem[_14051 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _14179) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _14179) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[(32 * _14179) + ceil32(return_data.size) + 992 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[(32 * _14179) + ceil32(return_data.size) + 964 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _14179) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14179) + ceil32(return_data.size) + 900]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14179) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14179) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14179) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _14179) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[(32 * _14179) + ceil32(return_data.size) + 1120 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[(32 * _14179) + ceil32(return_data.size) + 1092 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _14179) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14179) + ceil32(return_data.size) + 1028]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14179) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14179) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _14049 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _14178 = mem[_14049 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_14049 + 576])] = mem[_14049 + 608 len floor32(mem[_14049 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14178) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14178) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14178) + ceil32(return_data.size) + 992 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14178) + ceil32(return_data.size) + 964 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14178) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14178) + ceil32(return_data.size) + 900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14178) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14178) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14178) + ceil32(return_data.size) + 773 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14178) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14178) + ceil32(return_data.size) + 1120 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14178) + ceil32(return_data.size) + 1092 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14178) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14178) + ceil32(return_data.size) + 1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14178) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14178) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _14047 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _14177 = mem[_14047 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_14047 + 576])] = mem[_14047 + 608 len floor32(mem[_14047 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14177) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14177) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14177) + ceil32(return_data.size) + 992 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14177) + ceil32(return_data.size) + 964 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14177) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14177) + ceil32(return_data.size) + 900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14177) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14177) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14177) + ceil32(return_data.size) + 773 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14177) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14177) + ceil32(return_data.size) + 1120 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14177) + ceil32(return_data.size) + 1092 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14177) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14177) + ceil32(return_data.size) + 1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14177) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14177) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    if halvingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halvingPeriod
                    if not block.number - poolInfo[arg1].field_512:
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if 2^(block.number - startBlock / halvingPeriod) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2^(block.number - startBlock / halvingPeriod)
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fishAddress)
                        call fishAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[480] = 2
                        mem[512] = fishAddress
                        mem[544] = wbnbAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                        mem[612] = 0
                        mem[676] = fundsAddress
                        mem[708] = block.timestamp + 1800
                        mem[644] = 160
                        mem[740] = 2
                        mem[772 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 576
                        require return_data.size >= 32
                        _14045 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                        require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                        require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                        _14176 = mem[_14045 + 576]
                        mem[ceil32(return_data.size) + 608 len floor32(mem[_14045 + 576])] = mem[_14045 + 608 len floor32(mem[_14045 + 576])]
                        if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _14176) + ceil32(return_data.size) + 709 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _14176) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[(32 * _14176) + ceil32(return_data.size) + 992 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[(32 * _14176) + ceil32(return_data.size) + 964 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _14176) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14176) + ceil32(return_data.size) + 900]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14176) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14176) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14176) + ceil32(return_data.size) + 773 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fishAddress)
                                staticcall fishAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(fishAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call fishAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _14176) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[(32 * _14176) + ceil32(return_data.size) + 1120 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[(32 * _14176) + ceil32(return_data.size) + 1092 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[(32 * _14176) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14176) + ceil32(return_data.size) + 1028]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14176) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14176) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) / block.number - poolInfo[arg1].field_512 != fishPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock):
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _14043 = mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _14175 = mem[_14043 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_14043 + 576])] = mem[_14043 + 608 len floor32(mem[_14043 + 576])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14175) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14175) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14175) + ceil32(return_data.size) + 992 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14175) + ceil32(return_data.size) + 964 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14175) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14175) + ceil32(return_data.size) + 900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14175) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14175) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14175) + ceil32(return_data.size) + 773 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14175) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14175) + ceil32(return_data.size) + 1120 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14175) + ceil32(return_data.size) + 1092 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14175) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14175) + ceil32(return_data.size) + 1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14175) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14175) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock)
                            if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (poolInfo[arg1].field_512 * fishPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[288] = 26
                            mem[320] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[480] = 2
                            mem[512] = fishAddress
                            mem[544] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[580] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[612] = 0
                            mem[676] = fundsAddress
                            mem[708] = block.timestamp + 1800
                            mem[644] = 160
                            mem[740] = 2
                            mem[772 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[772 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 576
                            require return_data.size >= 32
                            _14041 = mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576] <= 4294967296 and mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 576]
                            _14174 = mem[_14041 + 576]
                            mem[ceil32(return_data.size) + 608 len floor32(mem[_14041 + 576])] = mem[_14041 + 608 len floor32(mem[_14041 + 576])]
                            if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14174) + ceil32(return_data.size) + 709 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14174) + ceil32(return_data.size) + 868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14174) + ceil32(return_data.size) + 992 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14174) + ceil32(return_data.size) + 964 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14174) + ceil32(return_data.size) + 900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14174) + ceil32(return_data.size) + 900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14174) + ceil32(return_data.size) + ceil32(return_data.size) + 979 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14174) + ceil32(return_data.size) + ceil32(return_data.size) + 970 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14174) + ceil32(return_data.size) + 773 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14174) + ceil32(return_data.size) + 996 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14174) + ceil32(return_data.size) + 1120 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14174) + ceil32(return_data.size) + 1092 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14174) + ceil32(return_data.size) + 1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14174) + ceil32(return_data.size) + 1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14174) + ceil32(return_data.size) + ceil32(return_data.size) + 1107 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14174) + ceil32(return_data.size) + ceil32(return_data.size) + 1098 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not block.number - bonusEndBlock:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _14039 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _14173 = mem[_14039 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_14039 + 640])] = mem[_14039 + 672 len floor32(mem[_14039 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14173) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14173) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14173) + ceil32(return_data.size) + 1056 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14173) + ceil32(return_data.size) + 1028 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14173) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14173) + ceil32(return_data.size) + 964]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14173) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14173) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14173) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14173) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14173) + ceil32(return_data.size) + 1184 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14173) + ceil32(return_data.size) + 1156 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14173) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14173) + ceil32(return_data.size) + 1092]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14173) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14173) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) / block.number - bonusEndBlock != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _14037 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _14172 = mem[_14037 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_14037 + 640])] = mem[_14037 + 672 len floor32(mem[_14037 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14172) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14172) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14172) + ceil32(return_data.size) + 1056 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14172) + ceil32(return_data.size) + 1028 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14172) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14172) + ceil32(return_data.size) + 964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14172) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14172) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14172) + ceil32(return_data.size) + 837 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14172) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14172) + ceil32(return_data.size) + 1184 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14172) + ceil32(return_data.size) + 1156 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14172) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14172) + ceil32(return_data.size) + 1092]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14172) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14172) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock)
                                if (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / (block.number * fishPerBlock) - (bonusEndBlock * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _14035 = mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _14171 = mem[_14035 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_14035 + 640])] = mem[_14035 + 672 len floor32(mem[_14035 + 640])]
                                if not (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14171) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * fishPerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14171) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14171) + ceil32(return_data.size) + 1056 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14171) + ceil32(return_data.size) + 1028 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14171) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14171) + ceil32(return_data.size) + 964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14171) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14171) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14171) + ceil32(return_data.size) + 837 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14171) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14171) + ceil32(return_data.size) + 1184 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14171) + ceil32(return_data.size) + 1156 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14171) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14171) + ceil32(return_data.size) + 1092]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14171) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14171) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if startBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[288] = 26
                        mem[320] = 'SafeMath: division by zero'
                        if halvingPeriod <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require halvingPeriod
                        if not -poolInfo[arg1].field_512 + block.number:
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2^(block.number - startBlock / halvingPeriod)
                            mem[480] = 26
                            mem[512] = 'SafeMath: division by zero'
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fishAddress)
                            call fishAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544] = 2
                            mem[576] = fishAddress
                            mem[608] = wbnbAddress
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                            mem[676] = 0
                            mem[740] = fundsAddress
                            mem[772] = block.timestamp + 1800
                            mem[708] = 160
                            mem[804] = 2
                            mem[836 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 640
                            require return_data.size >= 32
                            _14033 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                            require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                            require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                            _14170 = mem[_14033 + 640]
                            mem[ceil32(return_data.size) + 672 len floor32(mem[_14033 + 640])] = mem[_14033 + 672 len floor32(mem[_14033 + 640])]
                            if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _14170) + ceil32(return_data.size) + 773 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14170) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14170) + ceil32(return_data.size) + 1056 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14170) + ceil32(return_data.size) + 1028 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14170) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14170) + ceil32(return_data.size) + 964]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14170) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14170) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14170) + ceil32(return_data.size) + 837 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(fishAddress)
                                    staticcall fishAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(fishAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call fishAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _14170) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(32 * _14170) + ceil32(return_data.size) + 1184 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(32 * _14170) + ceil32(return_data.size) + 1156 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[(32 * _14170) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14170) + ceil32(return_data.size) + 1092]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14170) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14170) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require -poolInfo[arg1].field_512 + block.number
                            if (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) / -poolInfo[arg1].field_512 + block.number != fishPerBlock:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock):
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _14031 = mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _14169 = mem[_14031 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_14031 + 640])] = mem[_14031 + 672 len floor32(mem[_14031 + 640])]
                                if not 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14169) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14169) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14169) + ceil32(return_data.size) + 1056 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14169) + ceil32(return_data.size) + 1028 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14169) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14169) + ceil32(return_data.size) + 964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14169) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14169) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14169) + ceil32(return_data.size) + 837 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14169) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14169) + ceil32(return_data.size) + 1184 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14169) + ceil32(return_data.size) + 1156 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14169) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14169) + ceil32(return_data.size) + 1092]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14169) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14169) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock)
                                if (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * fishPerBlock) + (block.number * fishPerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                mem[352] = 26
                                mem[384] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[416] = 26
                                mem[448] = 'SafeMath: division by zero'
                                if 2^(block.number - startBlock / halvingPeriod) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2^(block.number - startBlock / halvingPeriod)
                                mem[480] = 26
                                mem[512] = 'SafeMath: division by zero'
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fishAddress)
                                call fishAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[544] = 2
                                mem[576] = fishAddress
                                mem[608] = wbnbAddress
                                if block.timestamp + 1800 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[640] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[644] = (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20
                                mem[676] = 0
                                mem[740] = fundsAddress
                                mem[772] = block.timestamp + 1800
                                mem[708] = 160
                                mem[804] = 2
                                mem[836 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20, 0, 160, fundsAddress, block.timestamp + 1800, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 640
                                require return_data.size >= 32
                                _14029 = mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 <= 4294967296
                                require mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 32 <= return_data.size
                                require mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640] <= 4294967296 and mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + (32 * mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 640] = mem[mem[640 len 4], Mask(224, 32, (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / 20) >> 32 + 640]
                                _14168 = mem[_14029 + 640]
                                mem[ceil32(return_data.size) + 672 len floor32(mem[_14029 + 640])] = mem[_14029 + 672 len floor32(mem[_14029 + 640])]
                                if not (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod)
                                    if 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) != 10^12:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14168) + ceil32(return_data.size) + 773 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * fishPerBlock * poolInfo[arg1].field_256) + (block.number * fishPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 2^(block.number - startBlock / halvingPeriod) / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14168) + ceil32(return_data.size) + 932 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14168) + ceil32(return_data.size) + 1056 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14168) + ceil32(return_data.size) + 1028 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14168) + ceil32(return_data.size) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14168) + ceil32(return_data.size) + 964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14168) + ceil32(return_data.size) + ceil32(return_data.size) + 1043 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14168) + ceil32(return_data.size) + ceil32(return_data.size) + 1034 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14168) + ceil32(return_data.size) + 837 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(fishAddress)
                                        staticcall fishAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(fishAddress)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call fishAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _14168) + ceil32(return_data.size) + 1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[(32 * _14168) + ceil32(return_data.size) + 1184 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[(32 * _14168) + ceil32(return_data.size) + 1156 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[(32 * _14168) + ceil32(return_data.size) + 1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14168) + ceil32(return_data.size) + 1092]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14168) + ceil32(return_data.size) + ceil32(return_data.size) + 1171 len 22]
                                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _14168) + ceil32(return_data.size) + ceil32(return_data.size) + 1162 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
