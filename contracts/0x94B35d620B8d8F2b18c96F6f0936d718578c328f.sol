contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 100


address owner;
address sub_d88ad887Address;
uint256 bonusEndBlock;
uint256 sub_96d70a63;
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

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_96d70a63(?) payable {
    return sub_96d70a63
}

function sub_d88ad887(?) payable {
    return sub_d88ad887Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_45a107df(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_96d70a63 = arg1
}

function checkPoolDuplicate(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if poolInfo[idx].field_0 == arg1:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
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
        if (100 * arg2) - (100 * arg1) / arg2 - arg1 != 100:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((100 * arg2) - (100 * arg1))
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
    if (100 * bonusEndBlock) - (100 * arg1) / bonusEndBlock - arg1 != 100:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (99 * bonusEndBlock) + arg2 < 100 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return ((99 * bonusEndBlock) - (100 * arg1) + arg2)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
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
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (100 * block.number) - (100 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (100 * block.number) - (100 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_d88ad887Address)
                        call sub_d88ad887Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (100 * block.number) - (100 * poolInfo[arg1].field_512)
                        if (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[arg1].field_512) != sub_96d70a63:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63)
                            if (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_d88ad887Address)
                        call sub_d88ad887Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) / block.number - poolInfo[arg1].field_512 != sub_96d70a63:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63)
                            if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
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
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
                                if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (100 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 100:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number
                            if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number != sub_96d70a63:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
                                if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_ff1653bd(?) payable {
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
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (100 * block.number) - (100 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 100:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (100 * block.number) - (100 * poolInfo[arg1].field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (100 * block.number) - (100 * poolInfo[arg1].field_512)
        if (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[arg1].field_512) != sub_96d70a63:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63)
        if (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) / block.number - poolInfo[arg1].field_512 != sub_96d70a63:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63)
        if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - bonusEndBlock
        if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
        if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if (100 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 100:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number
    if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number != sub_96d70a63:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
    if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
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
            _483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_483] = 30
            mem[_483 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _486 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_486 + idx + 68] = mem[_483 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_486 + 68] = mem[_486 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _486 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _534 = mem[64]
                mem[64] = mem[64] + 64
                mem[_534] = 26
                mem[_534 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _545 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_545 + idx + 68] = mem[_534 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_545 + 68] = mem[_545 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _545 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_629] = 26
                    mem[_629 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_658 + idx + 68] = mem[_629 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_658 + 68] = mem[_658 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _658 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _657 = mem[64]
                mem[64] = mem[64] + 64
                mem[_657] = 26
                mem[_657 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _702 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_702 + idx + 68] = mem[_657 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_702 + 68] = mem[_702 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _702 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (100 * block.number) - (100 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (100 * block.number) - (100 * poolInfo[idx].field_512):
                _544 = mem[64]
                mem[64] = mem[64] + 64
                mem[_544] = 26
                mem[_544 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_562 + idx + 68] = mem[_544 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_562 + 68] = mem[_562 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _562 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_656] = 26
                    mem[_656 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_699 + idx + 68] = mem[_656 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_699 + 68] = mem[_699 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _699 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_698] = 26
                mem[_698 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_745 + idx + 68] = mem[_698 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_745 + 68] = mem[_745 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _745 + -mem[64] + 100
            require (100 * block.number) - (100 * poolInfo[idx].field_512)
            if (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[idx].field_512) != sub_96d70a63:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63):
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 26
                mem[_561 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _579 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_579 + idx + 68] = mem[_561 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_579 + 68] = mem[_579 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _579 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_697] = 26
                    mem[_697 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_742 + idx + 68] = mem[_697 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_742 + 68] = mem[_742 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _742 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _741 = mem[64]
                mem[64] = mem[64] + 64
                mem[_741] = 26
                mem[_741 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _779 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_779 + idx + 68] = mem[_741 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_779 + 68] = mem[_779 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _779 + -mem[64] + 100
            require (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63)
            if (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _578 = mem[64]
            mem[64] = mem[64] + 64
            mem[_578] = 26
            mem[_578 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _591 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_591 + idx + 68] = mem[_578 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_591 + 68] = mem[_591 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _591 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                _740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_740] = 26
                mem[_740 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _776 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_776 + idx + 68] = mem[_740 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_776 + 68] = mem[_776 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _776 + -mem[64] + 100
            require (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_775] = 26
            mem[_775 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _803 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_803 + idx + 68] = mem[_775 + idx + 32]
                idx = idx + 32
                continue 
            mem[_803 + 68] = mem[_803 + 74 len 26]
            revert with memory
              from mem[64]
               len _803 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _485 = mem[64]
            mem[64] = mem[64] + 64
            mem[_485] = 30
            mem[_485 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _492 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_492 + idx + 68] = mem[_485 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_492 + 68] = mem[_492 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _492 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_523] = 26
                mem[_523 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _531 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_531 + idx + 68] = mem[_523 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_531 + 68] = mem[_531 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _531 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_597] = 26
                    mem[_597 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_615 + idx + 68] = mem[_597 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 68] = mem[_615 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _614 = mem[64]
                mem[64] = mem[64] + 64
                mem[_614] = 26
                mem[_614 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _644 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_644 + idx + 68] = mem[_614 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_644 + 68] = mem[_644 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _644 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) / block.number - poolInfo[idx].field_512 != sub_96d70a63:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63):
                _530 = mem[64]
                mem[64] = mem[64] + 64
                mem[_530] = 26
                mem[_530 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_536 + idx + 68] = mem[_530 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 68] = mem[_536 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_613] = 26
                    mem[_613 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _641 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_641 + idx + 68] = mem[_613 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_641 + 68] = mem[_641 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _641 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 26
                mem[_640 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _675 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_675 + idx + 68] = mem[_640 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_675 + 68] = mem[_675 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _675 + -mem[64] + 100
            require (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63)
            if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_535] = 26
            mem[_535 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _548 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_548 + idx + 68] = mem[_535 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_548 + 68] = mem[_548 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _548 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                _639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_639] = 26
                mem[_639 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _672 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_672 + idx + 68] = mem[_639 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_672 + 68] = mem[_672 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _672 + -mem[64] + 100
            require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _671 = mem[64]
            mem[64] = mem[64] + 64
            mem[_671] = 26
            mem[_671 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _713 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_713 + idx + 68] = mem[_671 + idx + 32]
                idx = idx + 32
                continue 
            mem[_713 + 68] = mem[_713 + 74 len 26]
            revert with memory
              from mem[64]
               len _713 + -mem[64] + 100
        _484 = mem[64]
        mem[64] = mem[64] + 64
        mem[_484] = 30
        mem[_484 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _489 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_489 + idx + 68] = mem[_484 + idx + 32]
                idx = idx + 32
                continue 
            mem[_489 + 68] = mem[_489 + 70 len 30]
            revert with memory
              from mem[64]
               len _489 + -mem[64] + 100
        _500 = mem[64]
        mem[64] = mem[64] + 64
        mem[_500] = 30
        mem[_500 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _508 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_508 + idx + 68] = mem[_500 + idx + 32]
                idx = idx + 32
                continue 
            mem[_508 + 68] = mem[_508 + 70 len 30]
            revert with memory
              from mem[64]
               len _508 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _596 = mem[64]
                mem[64] = mem[64] + 64
                mem[_596] = 26
                mem[_596 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _610 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_610 + idx + 68] = mem[_596 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_610 + 68] = mem[_610 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _610 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_813 + idx + 68] = mem[_787 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_813 + 68] = mem[_813 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _813 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_812] = 26
                mem[_812 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _841 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_841 + idx + 68] = mem[_812 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_841 + 68] = mem[_841 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _841 + -mem[64] + 100
            require block.number - bonusEndBlock
            if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
                _609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_609] = 26
                mem[_609 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _635 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_635 + idx + 68] = mem[_609 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_635 + 68] = mem[_635 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _635 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_811] = 26
                    mem[_811 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_838 + idx + 68] = mem[_811 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_838 + 68] = mem[_838 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _838 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_837] = 26
                mem[_837 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _869 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_869 + idx + 68] = mem[_837 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_869 + 68] = mem[_869 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _869 + -mem[64] + 100
            require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
            if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _634 = mem[64]
            mem[64] = mem[64] + 64
            mem[_634] = 26
            mem[_634 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _666 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_666 + idx + 68] = mem[_634 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_666 + 68] = mem[_666 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _666 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 26
                mem[_836 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _866 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_866 + idx + 68] = mem[_836 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_866 + 68] = mem[_866 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _866 + -mem[64] + 100
            require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _865 = mem[64]
            mem[64] = mem[64] + 64
            mem[_865] = 26
            mem[_865 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _895 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_895 + idx + 68] = mem[_865 + idx + 32]
                idx = idx + 32
                continue 
            mem[_895 + 68] = mem[_895 + 74 len 26]
            revert with memory
              from mem[64]
               len _895 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (100 * bonusEndBlock) - (100 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 100:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number:
            _608 = mem[64]
            mem[64] = mem[64] + 64
            mem[_608] = 26
            mem[_608 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _631 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_631 + idx + 68] = mem[_608 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_631 + 68] = mem[_631 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _631 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 26
                mem[_810 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _833 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_833 + idx + 68] = mem[_810 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_833 + 68] = mem[_833 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _833 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _832 = mem[64]
            mem[64] = mem[64] + 64
            mem[_832] = 26
            mem[_832 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _861 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_861 + idx + 68] = mem[_832 + idx + 32]
                idx = idx + 32
                continue 
            mem[_861 + 68] = mem[_861 + 74 len 26]
            revert with memory
              from mem[64]
               len _861 + -mem[64] + 100
        require (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number
        if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number != sub_96d70a63:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
            _630 = mem[64]
            mem[64] = mem[64] + 64
            mem[_630] = 26
            mem[_630 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _662 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_662 + idx + 68] = mem[_630 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_662 + 68] = mem[_662 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _662 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _831 = mem[64]
                mem[64] = mem[64] + 64
                mem[_831] = 26
                mem[_831 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _858 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_858 + idx + 68] = mem[_831 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_858 + 68] = mem[_858 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _858 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _857 = mem[64]
            mem[64] = mem[64] + 64
            mem[_857] = 26
            mem[_857 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _889 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_889 + idx + 68] = mem[_857 + idx + 32]
                idx = idx + 32
                continue 
            mem[_889 + 68] = mem[_889 + 74 len 26]
            revert with memory
              from mem[64]
               len _889 + -mem[64] + 100
        require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
        if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _661 = mem[64]
        mem[64] = mem[64] + 64
        mem[_661] = 26
        mem[_661 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _706 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_706 + idx + 68] = mem[_661 + idx + 32]
                idx = idx + 32
                continue 
            mem[_706 + 68] = mem[_706 + 74 len 26]
            revert with memory
              from mem[64]
               len _706 + -mem[64] + 100
        require totalAllocPoint
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_d88ad887Address)
        call sub_d88ad887Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
            _856 = mem[64]
            mem[64] = mem[64] + 64
            mem[_856] = 26
            mem[_856 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _886 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_886 + idx + 68] = mem[_856 + idx + 32]
                idx = idx + 32
                continue 
            mem[_886 + 68] = mem[_886 + 74 len 26]
            revert with memory
              from mem[64]
               len _886 + -mem[64] + 100
        require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _885 = mem[64]
        mem[64] = mem[64] + 64
        mem[_885] = 26
        mem[_885 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _916 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_916 + idx + 68] = mem[_885 + idx + 32]
            idx = idx + 32
            continue 
        mem[_916 + 68] = mem[_916 + 74 len 26]
        revert with memory
          from mem[64]
           len _916 + -mem[64] + 100
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
            mem[0] = 4
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
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 30
                mem[_526 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _530 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_530 + idx + 68] = mem[_526 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_530 + 68] = mem[_530 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _530 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_578] = 26
                    mem[_578 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_589 + idx + 68] = mem[_578 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_589 + 68] = mem[_589 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _589 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_673] = 26
                        mem[_673 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _702 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_702 + idx + 68] = mem[_673 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_702 + 68] = mem[_702 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _702 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_701] = 26
                    mem[_701 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _746 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_746 + idx + 68] = mem[_701 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_746 + 68] = mem[_746 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _746 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (100 * block.number) - (100 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (100 * block.number) - (100 * poolInfo[idx].field_512):
                    _588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_588] = 26
                    mem[_588 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_606 + idx + 68] = mem[_588 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_606 + 68] = mem[_606 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _606 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_700] = 26
                        mem[_700 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_743 + idx + 68] = mem[_700 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_743 + 68] = mem[_743 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _743 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _742 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_742] = 26
                    mem[_742 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _789 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_789 + idx + 68] = mem[_742 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_789 + 68] = mem[_789 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _789 + -mem[64] + 100
                require (100 * block.number) - (100 * poolInfo[idx].field_512)
                if (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[idx].field_512) != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63):
                    _605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_605] = 26
                    mem[_605 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_623 + idx + 68] = mem[_605 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_623 + 68] = mem[_623 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _623 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _741 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_741] = 26
                        mem[_741 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_786 + idx + 68] = mem[_741 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_786 + 68] = mem[_786 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _786 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_785] = 26
                    mem[_785 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_823 + idx + 68] = mem[_785 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_823 + 68] = mem[_823 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _823 + -mem[64] + 100
                require (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63)
                if (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_622] = 26
                mem[_622 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _635 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_635 + idx + 68] = mem[_622 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_635 + 68] = mem[_635 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _635 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_784] = 26
                    mem[_784 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_820 + idx + 68] = mem[_784 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_820 + 68] = mem[_820 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _820 + -mem[64] + 100
                require (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _819 = mem[64]
                mem[64] = mem[64] + 64
                mem[_819] = 26
                mem[_819 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _847 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_847 + idx + 68] = mem[_819 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_847 + 68] = mem[_847 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _847 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _529 = mem[64]
                mem[64] = mem[64] + 64
                mem[_529] = 30
                mem[_529 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_536 + idx + 68] = mem[_529 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 68] = mem[_536 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _567 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_567] = 26
                    mem[_567 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _575 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_575 + idx + 68] = mem[_567 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_575 + 68] = mem[_575 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _575 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_641] = 26
                        mem[_641 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _659 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_659 + idx + 68] = mem[_641 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_659 + 68] = mem[_659 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _659 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_658] = 26
                    mem[_658 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_688 + idx + 68] = mem[_658 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_688 + 68] = mem[_688 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _688 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) / block.number - poolInfo[idx].field_512 != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63):
                    _574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_574] = 26
                    mem[_574 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _580 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_580 + idx + 68] = mem[_574 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_580 + 68] = mem[_580 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _580 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_657] = 26
                        mem[_657 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_685 + idx + 68] = mem[_657 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_685 + 68] = mem[_685 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _685 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _684 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_684] = 26
                    mem[_684 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _719 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_719 + idx + 68] = mem[_684 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_719 + 68] = mem[_719 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _719 + -mem[64] + 100
                require (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63)
                if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_579] = 26
                mem[_579 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_592 + idx + 68] = mem[_579 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_592 + 68] = mem[_592 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _592 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _716 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_716 + idx + 68] = mem[_683 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_716 + 68] = mem[_716 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _716 + -mem[64] + 100
                require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_715] = 26
                mem[_715 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _757 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_757 + idx + 68] = mem[_715 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_757 + 68] = mem[_757 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _757 + -mem[64] + 100
            _528 = mem[64]
            mem[64] = mem[64] + 64
            mem[_528] = 30
            mem[_528 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_533 + idx + 68] = mem[_528 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_533 + 68] = mem[_533 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _533 + -mem[64] + 100
            _544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_544] = 30
            mem[_544 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _552 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_552 + idx + 68] = mem[_544 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_552 + 68] = mem[_552 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _552 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_640] = 26
                    mem[_640 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _654 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_654 + idx + 68] = mem[_640 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_654 + 68] = mem[_654 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _654 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_831] = 26
                        mem[_831 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _857 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_857 + idx + 68] = mem[_831 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_857 + 68] = mem[_857 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _857 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_856] = 26
                    mem[_856 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _885 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_885 + idx + 68] = mem[_856 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_885 + 68] = mem[_885 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _885 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
                    _653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_653] = 26
                    mem[_653 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_679 + idx + 68] = mem[_653 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_679 + 68] = mem[_679 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _679 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_855] = 26
                        mem[_855 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _882 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_882 + idx + 68] = mem[_855 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_882 + 68] = mem[_882 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _882 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _913 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_913 + idx + 68] = mem[_881 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_913 + 68] = mem[_913 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _913 + -mem[64] + 100
                require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
                if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 26
                mem[_678 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_710 + idx + 68] = mem[_678 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_710 + 68] = mem[_710 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _710 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_880] = 26
                    mem[_880 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _910 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_910 + idx + 68] = mem[_880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_910 + 68] = mem[_910 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _910 + -mem[64] + 100
                require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_909] = 26
                mem[_909 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _939 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_939 + idx + 68] = mem[_909 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_939 + 68] = mem[_939 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _939 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (100 * bonusEndBlock) - (100 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number:
                _652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_652] = 26
                mem[_652 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_675 + idx + 68] = mem[_652 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_675 + 68] = mem[_675 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _675 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_854] = 26
                    mem[_854 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_877 + idx + 68] = mem[_854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_877 + 68] = mem[_877 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _877 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_876] = 26
                mem[_876 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _905 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_905 + idx + 68] = mem[_876 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_905 + 68] = mem[_905 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _905 + -mem[64] + 100
            require (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number
            if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number != sub_96d70a63:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
                _674 = mem[64]
                mem[64] = mem[64] + 64
                mem[_674] = 26
                mem[_674 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_706 + idx + 68] = mem[_674 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_706 + 68] = mem[_706 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _706 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_875] = 26
                    mem[_875 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_902 + idx + 68] = mem[_875 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_902 + 68] = mem[_902 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _902 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_901] = 26
                mem[_901 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _933 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_933 + idx + 68] = mem[_901 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_933 + 68] = mem[_933 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _933 + -mem[64] + 100
            require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
            if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_705] = 26
            mem[_705 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _750 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_750 + idx + 68] = mem[_705 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_750 + 68] = mem[_750 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _750 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                _900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_900] = 26
                mem[_900 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _930 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_930 + idx + 68] = mem[_900 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_930 + 68] = mem[_930 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _930 + -mem[64] + 100
            require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _929 = mem[64]
            mem[64] = mem[64] + 64
            mem[_929] = 26
            mem[_929 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _960 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_960 + idx + 68] = mem[_929 + idx + 32]
                idx = idx + 32
                continue 
            mem[_960 + 68] = mem[_960 + 74 len 26]
            revert with memory
              from mem[64]
               len _960 + -mem[64] + 100
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
            mem[0] = 4
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
                _558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_558] = 30
                mem[_558 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_561 + idx + 68] = mem[_558 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_561 + 68] = mem[_561 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _561 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_609] = 26
                    mem[_609 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _620 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_620 + idx + 68] = mem[_609 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_620 + 68] = mem[_620 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _620 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_704] = 26
                        mem[_704 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_733 + idx + 68] = mem[_704 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 68] = mem[_733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_732] = 26
                    mem[_732 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_777 + idx + 68] = mem[_732 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_777 + 68] = mem[_777 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _777 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (100 * block.number) - (100 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (100 * block.number) - (100 * poolInfo[idx].field_512):
                    _619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_619] = 26
                    mem[_619 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_637 + idx + 68] = mem[_619 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_637 + 68] = mem[_637 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _637 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_731] = 26
                        mem[_731 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_774 + idx + 68] = mem[_731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_774 + 68] = mem[_774 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _774 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_773] = 26
                    mem[_773 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_820 + idx + 68] = mem[_773 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_820 + 68] = mem[_820 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _820 + -mem[64] + 100
                require (100 * block.number) - (100 * poolInfo[idx].field_512)
                if (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[idx].field_512) != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63):
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 26
                    mem[_636 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _654 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_654 + idx + 68] = mem[_636 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_654 + 68] = mem[_654 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _654 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_772] = 26
                        mem[_772 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_817 + idx + 68] = mem[_772 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_817 + 68] = mem[_817 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _817 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_816] = 26
                    mem[_816 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _854 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_854 + idx + 68] = mem[_816 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_854 + 68] = mem[_854 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _854 + -mem[64] + 100
                require (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63)
                if (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _653 = mem[64]
                mem[64] = mem[64] + 64
                mem[_653] = 26
                mem[_653 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_666 + idx + 68] = mem[_653 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 68] = mem[_666 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_815] = 26
                    mem[_815 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_851 + idx + 68] = mem[_815 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_851 + 68] = mem[_851 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _851 + -mem[64] + 100
                require (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_850] = 26
                mem[_850 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _878 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_878 + idx + 68] = mem[_850 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_878 + 68] = mem[_878 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _878 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 30
                mem[_560 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_567 + idx + 68] = mem[_560 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_567 + 68] = mem[_567 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _567 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_598] = 26
                    mem[_598 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_606 + idx + 68] = mem[_598 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_606 + 68] = mem[_606 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _606 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _672 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_672] = 26
                        mem[_672 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_690 + idx + 68] = mem[_672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_690 + 68] = mem[_690 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _690 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_689] = 26
                    mem[_689 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _719 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_719 + idx + 68] = mem[_689 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_719 + 68] = mem[_719 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _719 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) / block.number - poolInfo[idx].field_512 != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63):
                    _605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_605] = 26
                    mem[_605 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_611 + idx + 68] = mem[_605 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_611 + 68] = mem[_611 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _611 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_688] = 26
                        mem[_688 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_716 + idx + 68] = mem[_688 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_716 + 68] = mem[_716 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _716 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_715] = 26
                    mem[_715 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _750 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_750 + idx + 68] = mem[_715 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_750 + 68] = mem[_750 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _750 + -mem[64] + 100
                require (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63)
                if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (poolInfo[idx].field_512 * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_610] = 26
                mem[_610 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _623 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_623 + idx + 68] = mem[_610 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_623 + 68] = mem[_623 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _623 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_714] = 26
                    mem[_714 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_747 + idx + 68] = mem[_714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_747 + 68] = mem[_747 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _747 + -mem[64] + 100
                require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 26
                mem[_746 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _788 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_788 + idx + 68] = mem[_746 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_788 + 68] = mem[_788 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _788 + -mem[64] + 100
            _559 = mem[64]
            mem[64] = mem[64] + 64
            mem[_559] = 30
            mem[_559 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _564 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_564 + idx + 68] = mem[_559 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_564 + 68] = mem[_564 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _564 + -mem[64] + 100
            _575 = mem[64]
            mem[64] = mem[64] + 64
            mem[_575] = 30
            mem[_575 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_583 + idx + 68] = mem[_575 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_583 + 68] = mem[_583 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _583 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_671] = 26
                    mem[_671 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_685 + idx + 68] = mem[_671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_685 + 68] = mem[_685 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _685 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_862] = 26
                        mem[_862 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _888 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_888 + idx + 68] = mem[_862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_888 + 68] = mem[_888 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _888 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_887] = 26
                    mem[_887 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_916 + idx + 68] = mem[_887 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_916 + 68] = mem[_916 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _916 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
                    _684 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_684] = 26
                    mem[_684 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_710 + idx + 68] = mem[_684 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_710 + 68] = mem[_710 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _710 + -mem[64] + 100
                    require totalAllocPoint
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_886] = 26
                        mem[_886 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_913 + idx + 68] = mem[_886 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_913 + 68] = mem[_913 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _913 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_912] = 26
                    mem[_912 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _944 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_944 + idx + 68] = mem[_912 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_944 + 68] = mem[_944 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _944 + -mem[64] + 100
                require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
                if (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_709] = 26
                mem[_709 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_741 + idx + 68] = mem[_709 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_741 + 68] = mem[_741 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _741 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 26
                    mem[_911 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _941 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_941 + idx + 68] = mem[_911 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_941 + 68] = mem[_941 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _941 + -mem[64] + 100
                require (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_940] = 26
                mem[_940 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[idx].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_970 + idx + 68] = mem[_940 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_970 + 68] = mem[_970 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _970 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (100 * bonusEndBlock) - (100 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number:
                _683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_683] = 26
                mem[_683 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_706 + idx + 68] = mem[_683 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_706 + 68] = mem[_706 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _706 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_885] = 26
                    mem[_885 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _908 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_908 + idx + 68] = mem[_885 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_908 + 68] = mem[_908 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _908 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _907 = mem[64]
                mem[64] = mem[64] + 64
                mem[_907] = 26
                mem[_907 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_936 + idx + 68] = mem[_907 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_936 + 68] = mem[_936 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            require (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number
            if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[idx].field_512) + block.number != sub_96d70a63:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 26
                mem[_705 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _737 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_737 + idx + 68] = mem[_705 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_737 + 68] = mem[_737 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _737 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_d88ad887Address)
                call sub_d88ad887Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_906] = 26
                    mem[_906 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _933 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_933 + idx + 68] = mem[_906 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_933 + 68] = mem[_933 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _933 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _932 = mem[64]
                mem[64] = mem[64] + 64
                mem[_932] = 26
                mem[_932 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_964 + idx + 68] = mem[_932 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_964 + 68] = mem[_964 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _964 + -mem[64] + 100
            require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
            if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[idx].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _736 = mem[64]
            mem[64] = mem[64] + 64
            mem[_736] = 26
            mem[_736 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _781 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_781 + idx + 68] = mem[_736 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_781 + 68] = mem[_781 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _781 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_d88ad887Address)
            call sub_d88ad887Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint:
                _931 = mem[64]
                mem[64] = mem[64] + 64
                mem[_931] = 26
                mem[_931 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _961 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_961 + idx + 68] = mem[_931 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_961 + 68] = mem[_961 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _961 + -mem[64] + 100
            require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _960 = mem[64]
            mem[64] = mem[64] + 64
            mem[_960] = 26
            mem[_960 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[idx].field_256) - (100 * poolInfo[idx].field_512 * sub_96d70a63 * poolInfo[idx].field_256) + (block.number * sub_96d70a63 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _991 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_991 + idx + 68] = mem[_960 + idx + 32]
                idx = idx + 32
                continue 
            mem[_991 + 68] = mem[_991 + 74 len 26]
            revert with memory
              from mem[64]
               len _991 + -mem[64] + 100
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
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

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
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
                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
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
                    require ext_code.size(sub_d88ad887Address)
                    staticcall sub_d88ad887Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d88ad887Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_d88ad887Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_d88ad887Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
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
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
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
                    require ext_code.size(sub_d88ad887Address)
                    staticcall sub_d88ad887Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d88ad887Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_d88ad887Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_d88ad887Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
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
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
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
                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
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
                        require ext_code.size(sub_d88ad887Address)
                        staticcall sub_d88ad887Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_d88ad887Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                            call sub_d88ad887Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
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
                            call sub_d88ad887Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[544 len 4] = 0
                                mem[516 len 0] = 0
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
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_d88ad887Address)
                        staticcall sub_d88ad887Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_d88ad887Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_d88ad887Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_d88ad887Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
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
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_d88ad887Address)
                    call sub_d88ad887Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
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
                                                    mem[ceil32(return_data.size) + 586 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                    mem[708 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
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
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
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
                                                    mem[ceil32(return_data.size) + 586 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                    mem[708 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
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
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (100 * block.number) - (100 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (100 * block.number) - (100 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_d88ad887Address)
                        call sub_d88ad887Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
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
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
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
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require (100 * block.number) - (100 * poolInfo[arg1].field_512)
                        if (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) / (100 * block.number) - (100 * poolInfo[arg1].field_512) != sub_96d70a63:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63)
                            if (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (100 * block.number * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (100 * block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
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
                                                    mem[ceil32(return_data.size) + 586 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(sub_d88ad887Address)
                                    staticcall sub_d88ad887Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d88ad887Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_d88ad887Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[736 len 4] = 0
                                mem[708 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_d88ad887Address)
                        call sub_d88ad887Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
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
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[736 len 4] = 0
                                    mem[708 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
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
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
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
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) / block.number - poolInfo[arg1].field_512 != sub_96d70a63:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
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
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
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
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63)
                            if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (poolInfo[arg1].field_512 * sub_96d70a63) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[608 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
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
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
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
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
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
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[608 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
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
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
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
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
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
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
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
                                                        mem[ceil32(return_data.size) + 650 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                            mem[ceil32(return_data.size) + 778 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
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
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_d88ad887Address)
                                        staticcall sub_d88ad887Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_d88ad887Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_d88ad887Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) / block.number - bonusEndBlock != sub_96d70a63:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            mem[644 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    mem[772 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        mem[772 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    mem[772 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        mem[772 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63)
                                if (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / (block.number * sub_96d70a63) - (bonusEndBlock * sub_96d70a63) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
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
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_96d70a63 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            mem[644 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    mem[772 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        mem[772 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        mem[772 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (100 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 100:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (99 * bonusEndBlock) + block.number < 100 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_d88ad887Address)
                            call sub_d88ad887Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[672 len 4] = 0
                                        mem[644 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                            mem[ceil32(return_data.size) + 778 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[672 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
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
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
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
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number
                            if (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) / (99 * bonusEndBlock) - (100 * poolInfo[arg1].field_512) + block.number != sub_96d70a63:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            mem[644 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    mem[772 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if arg2 <= 0:
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    else:
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                        mem[800 len 4] = 0
                                                        mem[772 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                        if not return_data.size:
                                                            require not ext_call.success
                                                            revert with 'SafeMath: subtraction overflow'
                                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size > 0:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size > 0:
                                                            require return_data.size >= 32
                                                            if not mem[708]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                                            mem[ceil32(return_data.size) + 778 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[672 len 4] = 0
                                            mem[644 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[580]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 659 len 22]
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
                                                                mem[ceil32(return_data.size) + 650 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[800 len 4] = 0
                                                    mem[772 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[708]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                                                        mem[ceil32(return_data.size) + 778 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                                require ext_code.size(sub_d88ad887Address)
                                                staticcall sub_d88ad887Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_d88ad887Address)
                                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                                else:
                                                    call sub_d88ad887Address.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[708]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 787 len 22]
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
                                                                    mem[ceil32(return_data.size) + 778 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63)
                                if (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / (99 * bonusEndBlock * sub_96d70a63) - (100 * poolInfo[arg1].field_512 * sub_96d70a63) + (block.number * sub_96d70a63) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_d88ad887Address)
                                call sub_d88ad887Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (99 * bonusEndBlock * sub_96d70a63 * poolInfo[arg1].field_256) - (100 * poolInfo[arg1].field_512 * sub_96d70a63 * poolInfo[arg1].field_256) + (block.number * sub_96d70a63 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[672 len 4] = 0
                                        mem[644 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_d88ad887Address)
                                            staticcall sub_d88ad887Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_d88ad887Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_d88ad887Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                                            mem[ceil32(return_data.size) + 778 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
