contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_be279845(?) = 50

const BONUS_MULTIPLIER = 2


address owner;
address sub_88f9f1d7Address;
address devaddr;
address sub_dc40155cAddress;
address sub_059dd53dAddress;
address sub_ad0ca76eAddress;
address sub_2dd39eadAddress;
uint256 bonusEndBlock;
uint256 sub_abf61803;
uint8 stor9;
array of struct poolInfo;
mapping of struct staked;
uint256 totalAllocPoint;
uint256 startBlock;

function sub_059dd53d(?) payable {
    return sub_059dd53dAddress
}

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

function sub_2dd39ead(?) payable {
    return sub_2dd39eadAddress
}

function startBlock() payable {
    return startBlock
}

function staked(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return staked[arg1][address(arg2)].field_0
}

function sub_88f9f1d7(?) payable {
    return sub_88f9f1d7Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return staked[arg1][arg2].field_0, staked[arg1][arg2].field_256
}

function sub_abf61803(?) payable {
    return sub_abf61803
}

function sub_ad0ca76e(?) payable {
    return sub_ad0ca76eAddress
}

function devaddr() payable {
    return devaddr
}

function sub_dc40155c(?) payable {
    return sub_dc40155cAddress
}

function _fallback() payable {
    revert
}

function sub_b257715a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = 0
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: what?'
    devaddr = arg1
}

function sub_11fe5e89(?) payable {
    require calldata.size - 4 >= 32
    if sub_dc40155cAddress != msg.sender:
        revert with 0, 'dev: what?'
    sub_dc40155cAddress = arg1
}

function sub_549652b2(?) payable {
    require calldata.size - 4 >= 32
    if sub_ad0ca76eAddress != msg.sender:
        revert with 0, 'dev: what?'
    sub_ad0ca76eAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a336b492(?) payable {
    require calldata.size - 4 >= 32
    if sub_2dd39eadAddress != msg.sender:
        revert with 0, 'dev: what?'
    sub_2dd39eadAddress = arg1
}

function sub_b00c43cf(?) payable {
    require calldata.size - 4 >= 32
    if sub_059dd53dAddress != msg.sender:
        revert with 0, 'dev: what?'
    sub_059dd53dAddress = arg1
}

function sub_3fa7eec4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_abf61803 = arg1
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
        if 2 * arg2 - arg1 / arg2 - arg1 != 2:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * arg2 - arg1)
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
    if 2 * bonusEndBlock - arg1 / bonusEndBlock - arg1 != 2:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (2 * bonusEndBlock - arg1) + arg2 - bonusEndBlock < 2 * bonusEndBlock - arg1:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * bonusEndBlock - arg1) + arg2 - bonusEndBlock)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, staked[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args staked[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, staked[arg1][address(msg.sender)].field_0
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
    emit EmergencyWithdraw(staked[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    staked[arg1][address(msg.sender)].field_0 = 0
    staked[arg1][address(msg.sender)].field_256 = 0
}

function sub_331c22a1(?) payable {
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
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if staked[arg1][address(arg2)].field_256 > staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - staked[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if staked[arg1][address(arg2)].field_256 > staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((staked[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - staked[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not uint255(block.number - poolInfo[arg1].field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require 2 * block.number - poolInfo[arg1].field_512
        if 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 / 2 * block.number - poolInfo[arg1].field_512 != sub_abf61803:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803
        if 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint
        if 10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 2 * block.number - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * sub_abf61803) - (poolInfo[arg1].field_512 * sub_abf61803) / block.number - poolInfo[arg1].field_512 != sub_abf61803:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_abf61803) - (poolInfo[arg1].field_512 * sub_abf61803):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require (block.number * sub_abf61803) - (poolInfo[arg1].field_512 * sub_abf61803)
        if (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / (block.number * sub_abf61803) - (poolInfo[arg1].field_512 * sub_abf61803) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require block.number - bonusEndBlock
        if (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / block.number - bonusEndBlock != sub_abf61803:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not staked[arg1][address(arg2)].field_0:
                    if staked[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -staked[arg1][address(arg2)].field_256
                require staked[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
        if (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (2 * bonusEndBlock - poolInfo[arg1].field_512) + block.number - bonusEndBlock < 2 * bonusEndBlock - poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if not (2 * bonusEndBlock - poolInfo[arg1].field_512) + block.number - bonusEndBlock:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    require (2 * bonusEndBlock - poolInfo[arg1].field_512) + block.number - bonusEndBlock
    if (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / (2 * bonusEndBlock - poolInfo[arg1].field_512) + block.number - bonusEndBlock != sub_abf61803:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not staked[arg1][address(arg2)].field_0:
                if staked[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -staked[arg1][address(arg2)].field_256
            require staked[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    require (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
    if (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not staked[arg1][address(arg2)].field_0:
            if staked[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -staked[arg1][address(arg2)].field_256
        require staked[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
    require (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not staked[arg1][address(arg2)].field_0:
        if staked[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -staked[arg1][address(arg2)].field_256
    require staked[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / staked[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if staked[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * staked[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_abf61803 * poolInfo[arg1].field_256) + (block.number * sub_abf61803 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * staked[arg1][address(arg2)].field_0) / 10^12) - staked[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
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
                _721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_721] = 30
                mem[_721 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _725 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_725 + idx + 68] = mem[_721 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_725 + 68] = mem[_725 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _725 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_773] = 26
                    mem[_773 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _782 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_782 + idx + 68] = mem[_773 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_782 + 68] = mem[_782 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _782 + -mem[64] + 100
                    require totalAllocPoint
                    _816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_816] = 26
                    mem[_816 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_870] = 26
                    mem[_870 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_934] = 26
                    mem[_934 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _973 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_973] = 26
                    mem[_973 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1012 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1012] = 26
                    mem[_1012 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1094] = 26
                        mem[_1094 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1117 + idx + 68] = mem[_1094 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1117 + 68] = mem[_1117 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1117 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1116] = 26
                    mem[_1116 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1151 + idx + 68] = mem[_1116 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1151 + 68] = mem[_1151 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1151 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(block.number - poolInfo[idx].field_512):
                    _781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_781] = 26
                    mem[_781 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_798 + idx + 68] = mem[_781 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_798 + 68] = mem[_798 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _798 + -mem[64] + 100
                    require totalAllocPoint
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 26
                    mem[_828 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_891] = 26
                    mem[_891 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_945] = 26
                    mem[_945 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_984] = 26
                    mem[_984 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1023] = 26
                    mem[_1023 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1115 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1115] = 26
                        mem[_1115 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1148 + idx + 68] = mem[_1115 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1148 + 68] = mem[_1148 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1148 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1147] = 26
                    mem[_1147 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1185 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1185 + idx + 68] = mem[_1147 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1185 + 68] = mem[_1185 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1185 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512
                if 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 / 2 * block.number - poolInfo[idx].field_512 != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * block.number - poolInfo[idx].field_512 * sub_abf61803:
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_812 + idx + 68] = mem[_797 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_812 + 68] = mem[_812 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _812 + -mem[64] + 100
                    require totalAllocPoint
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 26
                    mem[_838 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _909 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_909] = 26
                    mem[_909 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_954] = 26
                    mem[_954 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_993] = 26
                    mem[_993 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1034] = 26
                    mem[_1034 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1146] = 26
                        mem[_1146 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1182 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1182 + idx + 68] = mem[_1146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1182 + 68] = mem[_1182 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1182 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1181 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1181] = 26
                    mem[_1181 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1214 + idx + 68] = mem[_1181 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1214 + 68] = mem[_1214 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1214 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512 * sub_abf61803
                if 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_811] = 26
                mem[_811 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _824 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_824 + idx + 68] = mem[_811 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_824 + 68] = mem[_824 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _824 + -mem[64] + 100
                require totalAllocPoint
                _854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_854] = 26
                mem[_854 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _924 = mem[64]
                mem[64] = mem[64] + 64
                mem[_924] = 26
                mem[_924 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_964] = 26
                mem[_964 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1003] = 26
                mem[_1003 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 26
                mem[_1045 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint:
                    _1180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1180] = 26
                    mem[_1180 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1211 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1211 + idx + 68] = mem[_1180 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1211 + 68] = mem[_1211 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1211 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                if 10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 26
                mem[_1210 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
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
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_724] = 30
                mem[_724 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_731 + idx + 68] = mem[_724 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_731 + 68] = mem[_731 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _731 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_762] = 26
                    mem[_762 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _770 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_770 + idx + 68] = mem[_762 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_770 + 68] = mem[_770 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _770 + -mem[64] + 100
                    require totalAllocPoint
                    _789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_789] = 26
                    mem[_789 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_845] = 26
                    mem[_845 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_915] = 26
                    mem[_915 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_957] = 26
                    mem[_957 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_996] = 26
                    mem[_996 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1070] = 26
                        mem[_1070 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1083 + idx + 68] = mem[_1070 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1083 + 68] = mem[_1083 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1083 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1082] = 26
                    mem[_1082 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1101 + idx + 68] = mem[_1082 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1101 + 68] = mem[_1101 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1101 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803) / block.number - poolInfo[idx].field_512 != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803):
                    _769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_769] = 26
                    mem[_769 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _775 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_775 + idx + 68] = mem[_769 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_775 + 68] = mem[_775 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _775 + -mem[64] + 100
                    require totalAllocPoint
                    _803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_803] = 26
                    mem[_803 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_865] = 26
                    mem[_865 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_927] = 26
                    mem[_927 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_966] = 26
                    mem[_966 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1005] = 26
                    mem[_1005 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1081] = 26
                        mem[_1081 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1098 + idx + 68] = mem[_1081 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1098 + 68] = mem[_1098 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1098 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1097] = 26
                    mem[_1097 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1124 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1124 + idx + 68] = mem[_1097 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1124 + 68] = mem[_1124 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1124 + -mem[64] + 100
                require (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803)
                if (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_774] = 26
                mem[_774 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _785 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_785 + idx + 68] = mem[_774 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_785 + 68] = mem[_785 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _785 + -mem[64] + 100
                require totalAllocPoint
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 26
                mem[_818 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_882] = 26
                mem[_882 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_936] = 26
                mem[_936 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _975 = mem[64]
                mem[64] = mem[64] + 64
                mem[_975] = 26
                mem[_975 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1014] = 26
                mem[_1014 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1096 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1096] = 26
                    mem[_1096 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1121 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1121 + idx + 68] = mem[_1096 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1121 + 68] = mem[_1121 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1121 + -mem[64] + 100
                require (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1120] = 26
                mem[_1120 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1155 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1155 + idx + 68] = mem[_1120 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1155 + 68] = mem[_1155 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1155 + -mem[64] + 100
            _723 = mem[64]
            mem[64] = mem[64] + 64
            mem[_723] = 30
            mem[_723 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _728 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_728 + idx + 68] = mem[_723 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_728 + 68] = mem[_728 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _728 + -mem[64] + 100
            _739 = mem[64]
            mem[64] = mem[64] + 64
            mem[_739] = 30
            mem[_739 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _747 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_747 + idx + 68] = mem[_739 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_747 + 68] = mem[_747 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _747 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_830] = 26
                    mem[_830 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _842 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_842 + idx + 68] = mem[_830 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_842 + 68] = mem[_842 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _842 + -mem[64] + 100
                    require totalAllocPoint
                    _880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_880] = 26
                    mem[_880 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_935] = 26
                    mem[_935 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_974] = 26
                    mem[_974 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1013] = 26
                    mem[_1013 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1057] = 26
                    mem[_1057 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1221] = 26
                        mem[_1221 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1247 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1247 + idx + 68] = mem[_1221 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1247 + 68] = mem[_1247 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1247 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1246] = 26
                    mem[_1246 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1275 + idx + 68] = mem[_1246 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1275 + 68] = mem[_1275 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1275 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / block.number - bonusEndBlock != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
                    _841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_841] = 26
                    mem[_841 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_861 + idx + 68] = mem[_841 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_861 + 68] = mem[_861 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _861 + -mem[64] + 100
                    require totalAllocPoint
                    _899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_899] = 26
                    mem[_899 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _947 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_947] = 26
                    mem[_947 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_986] = 26
                    mem[_986 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1025] = 26
                    mem[_1025 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 26
                    mem[_1069 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1245] = 26
                        mem[_1245 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1272 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1272 + idx + 68] = mem[_1245 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1272 + 68] = mem[_1272 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1272 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1271] = 26
                    mem[_1271 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1303 + idx + 68] = mem[_1271 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1303 + 68] = mem[_1303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1303 + -mem[64] + 100
                require (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
                if (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _860 = mem[64]
                mem[64] = mem[64] + 64
                mem[_860] = 26
                mem[_860 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_876 + idx + 68] = mem[_860 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_876 + 68] = mem[_876 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _876 + -mem[64] + 100
                require totalAllocPoint
                _913 = mem[64]
                mem[64] = mem[64] + 64
                mem[_913] = 26
                mem[_913 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _956 = mem[64]
                mem[64] = mem[64] + 64
                mem[_956] = 26
                mem[_956 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _995 = mem[64]
                mem[64] = mem[64] + 64
                mem[_995] = 26
                mem[_995 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1036 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1036] = 26
                mem[_1036 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1080] = 26
                mem[_1080 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1270] = 26
                    mem[_1270 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1300 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1300 + idx + 68] = mem[_1270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1300 + 68] = mem[_1300 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1300 + -mem[64] + 100
                require (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1299] = 26
                mem[_1299 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1329 + idx + 68] = mem[_1299 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1329 + 68] = mem[_1329 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1329 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock < 2 * bonusEndBlock - poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock:
                _840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_840] = 26
                mem[_840 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _857 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_857 + idx + 68] = mem[_840 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_857 + 68] = mem[_857 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _857 + -mem[64] + 100
                require totalAllocPoint
                _896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_896] = 26
                mem[_896 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 26
                mem[_946 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _985 = mem[64]
                mem[64] = mem[64] + 64
                mem[_985] = 26
                mem[_985 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1024] = 26
                mem[_1024 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1068 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1068] = 26
                mem[_1068 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1244] = 26
                    mem[_1244 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1267 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1267 + idx + 68] = mem[_1244 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1267 + 68] = mem[_1267 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1267 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1266] = 26
                mem[_1266 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1295 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1295 + idx + 68] = mem[_1266 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1295 + 68] = mem[_1295 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1295 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock
            if (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock != sub_abf61803:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
                _856 = mem[64]
                mem[64] = mem[64] + 64
                mem[_856] = 26
                mem[_856 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _872 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_872 + idx + 68] = mem[_856 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_872 + 68] = mem[_872 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _872 + -mem[64] + 100
                require totalAllocPoint
                _911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_911] = 26
                mem[_911 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_955] = 26
                mem[_955 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_994] = 26
                mem[_994 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1035] = 26
                mem[_1035 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1079] = 26
                mem[_1079 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1265] = 26
                    mem[_1265 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1292 + idx + 68] = mem[_1265 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1292 + 68] = mem[_1292 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1292 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1291] = 26
                mem[_1291 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1323 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1323 + idx + 68] = mem[_1291 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1323 + 68] = mem[_1323 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1323 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
            if (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _871 = mem[64]
            mem[64] = mem[64] + 64
            mem[_871] = 26
            mem[_871 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _892 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_892 + idx + 68] = mem[_871 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_892 + 68] = mem[_892 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _892 + -mem[64] + 100
            require totalAllocPoint
            _925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_925] = 26
            mem[_925 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_965] = 26
            mem[_965 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_dc40155cAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1004 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1004] = 26
            mem[_1004 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_059dd53dAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1046 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1046] = 26
            mem[_1046 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_ad0ca76eAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1095] = 26
            mem[_1095 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_2dd39eadAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                _1290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1290] = 26
                mem[_1290 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1320 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1320 + idx + 68] = mem[_1290 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1320 + 68] = mem[_1320 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1320 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1319 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1319] = 26
            mem[_1319 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1350 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1350 + idx + 68] = mem[_1319 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1350 + 68] = mem[_1350 + 74 len 26]
            revert with memory
              from mem[64]
               len _1350 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
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
                _753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_753] = 30
                mem[_753 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _756 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_756 + idx + 68] = mem[_753 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_756 + 68] = mem[_756 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _756 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_804] = 26
                    mem[_804 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _813 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_813 + idx + 68] = mem[_804 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_813 + 68] = mem[_813 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _813 + -mem[64] + 100
                    require totalAllocPoint
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 26
                    mem[_847 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_901] = 26
                    mem[_901 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_965] = 26
                    mem[_965 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1004 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1004] = 26
                    mem[_1004 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1125] = 26
                        mem[_1125 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1148 + idx + 68] = mem[_1125 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1148 + 68] = mem[_1148 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1148 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1147] = 26
                    mem[_1147 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1182 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1182 + idx + 68] = mem[_1147 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1182 + 68] = mem[_1182 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1182 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(block.number - poolInfo[idx].field_512):
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _829 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_829 + idx + 68] = mem[_812 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_829 + 68] = mem[_829 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _829 + -mem[64] + 100
                    require totalAllocPoint
                    _859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_859] = 26
                    mem[_859 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_922] = 26
                    mem[_922 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_976] = 26
                    mem[_976 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1015] = 26
                    mem[_1015 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1054] = 26
                    mem[_1054 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1146] = 26
                        mem[_1146 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1179 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1179 + idx + 68] = mem[_1146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1179 + 68] = mem[_1179 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1179 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = 26
                    mem[_1178 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1216 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1216 + idx + 68] = mem[_1178 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1216 + 68] = mem[_1216 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1216 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512
                if 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 / 2 * block.number - poolInfo[idx].field_512 != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * block.number - poolInfo[idx].field_512 * sub_abf61803:
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 26
                    mem[_828 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _843 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_843 + idx + 68] = mem[_828 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_843 + 68] = mem[_843 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _843 + -mem[64] + 100
                    require totalAllocPoint
                    _869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_869] = 26
                    mem[_869 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_940] = 26
                    mem[_940 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_985] = 26
                    mem[_985 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1024] = 26
                    mem[_1024 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1065] = 26
                    mem[_1065 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1177] = 26
                        mem[_1177 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1213 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1213 + idx + 68] = mem[_1177 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1213 + 68] = mem[_1213 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1213 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1212] = 26
                    mem[_1212 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1245 + idx + 68] = mem[_1212 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1245 + 68] = mem[_1245 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1245 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512 * sub_abf61803
                if 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_842] = 26
                mem[_842 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_855 + idx + 68] = mem[_842 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_855 + 68] = mem[_855 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _855 + -mem[64] + 100
                require totalAllocPoint
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 26
                mem[_885 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_955] = 26
                mem[_955 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _995 = mem[64]
                mem[64] = mem[64] + 64
                mem[_995] = 26
                mem[_995 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1034] = 26
                mem[_1034 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1076 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1076] = 26
                mem[_1076 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint:
                    _1211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1211] = 26
                    mem[_1211 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1242 + idx + 68] = mem[_1211 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1242 + 68] = mem[_1242 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1242 + -mem[64] + 100
                require 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint
                if 10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1241] = 26
                mem[_1241 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 2 * block.number - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1268 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1268 + idx + 68] = mem[_1241 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1268 + 68] = mem[_1268 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1268 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 30
                mem[_755 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_762 + idx + 68] = mem[_755 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_762 + 68] = mem[_762 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _762 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_793] = 26
                    mem[_793 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_801 + idx + 68] = mem[_793 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_801 + 68] = mem[_801 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _801 + -mem[64] + 100
                    require totalAllocPoint
                    _820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_820] = 26
                    mem[_820 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_876] = 26
                    mem[_876 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_946] = 26
                    mem[_946 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_988] = 26
                    mem[_988 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1027] = 26
                    mem[_1027 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1101] = 26
                        mem[_1101 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1114 + idx + 68] = mem[_1101 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1114 + 68] = mem[_1114 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1114 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1113] = 26
                    mem[_1113 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1132 + idx + 68] = mem[_1113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1132 + 68] = mem[_1132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1132 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803) / block.number - poolInfo[idx].field_512 != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803):
                    _800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_800] = 26
                    mem[_800 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _806 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_806 + idx + 68] = mem[_800 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_806 + 68] = mem[_806 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _806 + -mem[64] + 100
                    require totalAllocPoint
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_896] = 26
                    mem[_896 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _958 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_958] = 26
                    mem[_958 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_997] = 26
                    mem[_997 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 26
                    mem[_1036 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1112] = 26
                        mem[_1112 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1129 + idx + 68] = mem[_1112 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1129 + 68] = mem[_1129 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1129 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1128] = 26
                    mem[_1128 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1155 + idx + 68] = mem[_1128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1155 + 68] = mem[_1155 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1155 + -mem[64] + 100
                require (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803)
                if (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / (block.number * sub_abf61803) - (poolInfo[idx].field_512 * sub_abf61803) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_805] = 26
                mem[_805 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _816 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_816 + idx + 68] = mem[_805 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_816 + 68] = mem[_816 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _816 + -mem[64] + 100
                require totalAllocPoint
                _849 = mem[64]
                mem[64] = mem[64] + 64
                mem[_849] = 26
                mem[_849 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _913 = mem[64]
                mem[64] = mem[64] + 64
                mem[_913] = 26
                mem[_913 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1006] = 26
                mem[_1006 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 26
                mem[_1045 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1127] = 26
                    mem[_1127 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1152 + idx + 68] = mem[_1127 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1152 + 68] = mem[_1152 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1152 + -mem[64] + 100
                require (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1151] = 26
                mem[_1151 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1186 + idx + 68] = mem[_1151 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1186 + 68] = mem[_1186 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1186 + -mem[64] + 100
            _754 = mem[64]
            mem[64] = mem[64] + 64
            mem[_754] = 30
            mem[_754 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _759 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_759 + idx + 68] = mem[_754 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_759 + 68] = mem[_759 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _759 + -mem[64] + 100
            _770 = mem[64]
            mem[64] = mem[64] + 64
            mem[_770] = 30
            mem[_770 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _778 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_778 + idx + 68] = mem[_770 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_778 + 68] = mem[_778 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _778 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_861] = 26
                    mem[_861 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_873 + idx + 68] = mem[_861 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_873 + 68] = mem[_873 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _873 + -mem[64] + 100
                    require totalAllocPoint
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 26
                    mem[_911 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_966] = 26
                    mem[_966 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1005] = 26
                    mem[_1005 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1044] = 26
                    mem[_1044 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1088] = 26
                    mem[_1088 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1252] = 26
                        mem[_1252 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1278 + idx + 68] = mem[_1252 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1278 + 68] = mem[_1278 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1278 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1277] = 26
                    mem[_1277 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1306 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1306 + idx + 68] = mem[_1277 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1306 + 68] = mem[_1306 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1306 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / block.number - bonusEndBlock != sub_abf61803:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
                    _872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_872] = 26
                    mem[_872 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _892 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_892 + idx + 68] = mem[_872 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_892 + 68] = mem[_892 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _892 + -mem[64] + 100
                    require totalAllocPoint
                    _930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_930] = 26
                    mem[_930 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_978] = 26
                    mem[_978 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1017] = 26
                    mem[_1017 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1056] = 26
                    mem[_1056 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1100] = 26
                    mem[_1100 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_88f9f1d7Address)
                    call sub_88f9f1d7Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1276] = 26
                        mem[_1276 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1303 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1303 + idx + 68] = mem[_1276 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1303 + 68] = mem[_1303 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1303 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1302] = 26
                    mem[_1302 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1334 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1334 + idx + 68] = mem[_1302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1334 + 68] = mem[_1334 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1334 + -mem[64] + 100
                require (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
                if (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_891] = 26
                mem[_891 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _907 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_907 + idx + 68] = mem[_891 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_907 + 68] = mem[_907 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _907 + -mem[64] + 100
                require totalAllocPoint
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 26
                mem[_944 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_987] = 26
                mem[_987 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1026] = 26
                mem[_1026 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1067] = 26
                mem[_1067 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1111] = 26
                mem[_1111 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1301 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1301] = 26
                    mem[_1301 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1331 + idx + 68] = mem[_1301 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1331 + 68] = mem[_1331 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1331 + -mem[64] + 100
                require (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1330] = 26
                mem[_1330 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1360 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1360 + idx + 68] = mem[_1330 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1360 + 68] = mem[_1360 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1360 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock < 2 * bonusEndBlock - poolInfo[idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock:
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _888 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_888 + idx + 68] = mem[_871 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_888 + 68] = mem[_888 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _888 + -mem[64] + 100
                require totalAllocPoint
                _927 = mem[64]
                mem[64] = mem[64] + 64
                mem[_927] = 26
                mem[_927 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _977 = mem[64]
                mem[64] = mem[64] + 64
                mem[_977] = 26
                mem[_977 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1016 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1016] = 26
                mem[_1016 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1055 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1055] = 26
                mem[_1055 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1099 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1099] = 26
                mem[_1099 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1275] = 26
                    mem[_1275 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1298 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1298 + idx + 68] = mem[_1275 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1298 + 68] = mem[_1298 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1298 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1297 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1297] = 26
                mem[_1297 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1326 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1326 + idx + 68] = mem[_1297 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1326 + 68] = mem[_1326 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1326 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock
            if (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) / (2 * bonusEndBlock - poolInfo[idx].field_512) + block.number - bonusEndBlock != sub_abf61803:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803):
                _887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_887] = 26
                mem[_887 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_903 + idx + 68] = mem[_887 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 68] = mem[_903 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                require totalAllocPoint
                _942 = mem[64]
                mem[64] = mem[64] + 64
                mem[_942] = 26
                mem[_942 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 26
                mem[_986 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_dc40155cAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1025] = 26
                mem[_1025 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_059dd53dAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1066 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1066] = 26
                mem[_1066 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_ad0ca76eAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1110] = 26
                mem[_1110 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_2dd39eadAddress, 0 / totalAllocPoint / 50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_88f9f1d7Address)
                call sub_88f9f1d7Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1296] = 26
                    mem[_1296 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1323 + idx + 68] = mem[_1296 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1323 + 68] = mem[_1323 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1323 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1322] = 26
                mem[_1322 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1354 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1354 + idx + 68] = mem[_1322 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1354 + 68] = mem[_1354 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1354 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803)
            if (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803) + (block.number * sub_abf61803) - (bonusEndBlock * sub_abf61803) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _902 = mem[64]
            mem[64] = mem[64] + 64
            mem[_902] = 26
            mem[_902 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _923 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_923 + idx + 68] = mem[_902 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_923 + 68] = mem[_923 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _923 + -mem[64] + 100
            require totalAllocPoint
            _956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_956] = 26
            mem[_956 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _996 = mem[64]
            mem[64] = mem[64] + 64
            mem[_996] = 26
            mem[_996 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_dc40155cAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1035 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1035] = 26
            mem[_1035 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_059dd53dAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1077 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1077] = 26
            mem[_1077 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_ad0ca76eAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1126] = 26
            mem[_1126 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_2dd39eadAddress, (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / 50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_88f9f1d7Address)
            call sub_88f9f1d7Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint:
                _1321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1321] = 26
                mem[_1321 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1351 + idx + 68] = mem[_1321 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1351 + 68] = mem[_1351 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1351 + -mem[64] + 100
            require (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1350 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1350] = 26
            mem[_1350 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_abf61803 * poolInfo[idx].field_256) + (block.number * sub_abf61803 * poolInfo[idx].field_256) - (bonusEndBlock * sub_abf61803 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1381 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1381 + idx + 68] = mem[_1350 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1381 + 68] = mem[_1381 + 74 len 26]
            revert with memory
              from mem[64]
               len _1381 + -mem[64] + 100
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
}



}
