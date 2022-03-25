contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_0cefcdc8Address;
uint256 devFundDivRate;
address devaddr;
uint256 bonusEndBlock;
uint256 sub_a62ec584;
uint256 unstakingFrozenTime;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint256 lastStakeTimes;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function sub_0cefcdc8(?) payable {
    return sub_0cefcdc8Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function unstakingFrozenTime() payable {
    return unstakingFrozenTime
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

function devFundDivRate() payable {
    return devFundDivRate
}

function lastStakeTimes(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastStakeTimes[arg1]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_a62ec584(?) payable {
    return sub_a62ec584
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function unfrozenStakeTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return (lastStakeTimes[address(arg1)] + unstakingFrozenTime)
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function setUnstakingFrozenTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unstakingFrozenTime = arg1
}

function sub_402234de(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!drfPerBlock-0'
    sub_a62ec584 = arg1
}

function setDevFundDivRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!devFundDivRate-0'
    devFundDivRate = arg1
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
    if block.timestamp < lastStakeTimes[address(msg.sender)] + unstakingFrozenTime:
        revert with 0, 'Wait until coin unfrozen'
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
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
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
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
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
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
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                            require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
                            if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
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
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                            require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
                            if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
                                if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not -poolInfo[arg1].field_512 + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require -poolInfo[arg1].field_512 + block.number
                            if (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[arg1].field_512 + block.number != sub_a62ec584:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
                                if (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_dc5f2987(?) payable {
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
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
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
        require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
        if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
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
        require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
        if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
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
        require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
        if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number < bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not -poolInfo[arg1].field_512 + block.number:
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
    require -poolInfo[arg1].field_512 + block.number
    if (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[arg1].field_512 + block.number != sub_a62ec584:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
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
    require (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
    if (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
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
    require (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
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
            _613 = mem[64]
            mem[64] = mem[64] + 64
            mem[_613] = 30
            mem[_613 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _616 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_616 + idx + 68] = mem[_613 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_616 + 68] = mem[_616 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _616 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_664] = 26
                mem[_664 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_673 + idx + 68] = mem[_664 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_673 + 68] = mem[_673 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _673 + -mem[64] + 100
                require totalAllocPoint
                _710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_710] = 26
                mem[_710 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _730 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_730 + idx + 68] = mem[_710 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_730 + 68] = mem[_730 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _730 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_889] = 26
                    mem[_889 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_926 + idx + 68] = mem[_889 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_926 + 68] = mem[_926 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _926 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _925 = mem[64]
                mem[64] = mem[64] + 64
                mem[_925] = 26
                mem[_925 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _971 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_971 + idx + 68] = mem[_925 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_971 + 68] = mem[_971 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _971 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_672] = 26
                mem[_672 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _689 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_689 + idx + 68] = mem[_672 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_689 + 68] = mem[_689 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _689 + -mem[64] + 100
                require totalAllocPoint
                _728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_728] = 26
                mem[_728 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_752 + idx + 68] = mem[_728 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_752 + 68] = mem[_752 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _752 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_924] = 26
                    mem[_924 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_968 + idx + 68] = mem[_924 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_968 + 68] = mem[_968 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _968 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1010 + idx + 68] = mem[_967 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1010 + 68] = mem[_1010 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1010 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 26
                mem[_688 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_706 + idx + 68] = mem[_688 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_706 + 68] = mem[_706 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _706 + -mem[64] + 100
                require totalAllocPoint
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = 26
                mem[_750 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _779 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_779 + idx + 68] = mem[_750 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_779 + 68] = mem[_779 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _779 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_966] = 26
                    mem[_966 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1007 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1007 + idx + 68] = mem[_966 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1007 + 68] = mem[_1007 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1007 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1006] = 26
                mem[_1006 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1040 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1040 + idx + 68] = mem[_1006 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1040 + 68] = mem[_1040 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1040 + -mem[64] + 100
            require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
            if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_705] = 26
            mem[_705 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _724 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_724 + idx + 68] = mem[_705 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_724 + 68] = mem[_724 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _724 + -mem[64] + 100
            require totalAllocPoint
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 26
            mem[_777 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _804 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_804 + idx + 68] = mem[_777 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_804 + 68] = mem[_804 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _804 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                _1005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1005] = 26
                mem[_1005 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1037 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1037 + idx + 68] = mem[_1005 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1037 + 68] = mem[_1037 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1037 + -mem[64] + 100
            require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1036 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1036] = 26
            mem[_1036 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1063 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1063 + idx + 68] = mem[_1036 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1063 + 68] = mem[_1063 + 74 len 26]
            revert with memory
              from mem[64]
               len _1063 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _615 = mem[64]
            mem[64] = mem[64] + 64
            mem[_615] = 30
            mem[_615 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _622 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_622 + idx + 68] = mem[_615 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_622 + 68] = mem[_622 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _622 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _653 = mem[64]
                mem[64] = mem[64] + 64
                mem[_653] = 26
                mem[_653 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _661 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_661 + idx + 68] = mem[_653 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_661 + 68] = mem[_661 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _661 + -mem[64] + 100
                require totalAllocPoint
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 26
                mem[_680 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_696 + idx + 68] = mem[_680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_696 + 68] = mem[_696 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _696 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_846] = 26
                    mem[_846 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _874 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_874 + idx + 68] = mem[_846 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_874 + 68] = mem[_874 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _874 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_873] = 26
                mem[_873 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _906 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_906 + idx + 68] = mem[_873 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_906 + 68] = mem[_906 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _906 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                _660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_660] = 26
                mem[_660 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_666 + idx + 68] = mem[_660 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 68] = mem[_666 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                require totalAllocPoint
                _694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_694] = 26
                mem[_694 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_714 + idx + 68] = mem[_694 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_714 + 68] = mem[_714 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _714 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_872] = 26
                    mem[_872 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_903 + idx + 68] = mem[_872 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 68] = mem[_903 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_902] = 26
                mem[_902 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _940 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_940 + idx + 68] = mem[_902 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_940 + 68] = mem[_940 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _940 + -mem[64] + 100
            require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
            if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _665 = mem[64]
            mem[64] = mem[64] + 64
            mem[_665] = 26
            mem[_665 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _676 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_676 + idx + 68] = mem[_665 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_676 + 68] = mem[_676 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _676 + -mem[64] + 100
            require totalAllocPoint
            _712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_712] = 26
            mem[_712 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _734 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_734 + idx + 68] = mem[_712 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_734 + 68] = mem[_734 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _734 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                _901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_901] = 26
                mem[_901 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _937 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_937 + idx + 68] = mem[_901 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_937 + 68] = mem[_937 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _937 + -mem[64] + 100
            require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_936] = 26
            mem[_936 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _978 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_978 + idx + 68] = mem[_936 + idx + 32]
                idx = idx + 32
                continue 
            mem[_978 + 68] = mem[_978 + 74 len 26]
            revert with memory
              from mem[64]
               len _978 + -mem[64] + 100
        _614 = mem[64]
        mem[64] = mem[64] + 64
        mem[_614] = 30
        mem[_614 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _619 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_619 + idx + 68] = mem[_614 + idx + 32]
                idx = idx + 32
                continue 
            mem[_619 + 68] = mem[_619 + 70 len 30]
            revert with memory
              from mem[64]
               len _619 + -mem[64] + 100
        _630 = mem[64]
        mem[64] = mem[64] + 64
        mem[_630] = 30
        mem[_630 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _638 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_638 + idx + 68] = mem[_630 + idx + 32]
                idx = idx + 32
                continue 
            mem[_638 + 68] = mem[_638 + 70 len 30]
            revert with memory
              from mem[64]
               len _638 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_733] = 26
                mem[_733 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _758 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_758 + idx + 68] = mem[_733 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_758 + 68] = mem[_758 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _758 + -mem[64] + 100
                require totalAllocPoint
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 26
                mem[_818 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_843 + idx + 68] = mem[_818 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_843 + 68] = mem[_843 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _843 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1047] = 26
                    mem[_1047 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1073 + idx + 68] = mem[_1047 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1072 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1072] = 26
                mem[_1072 + 32] = 'SafeMath: division by zero'
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
                    mem[_1101 + idx + 68] = mem[_1072 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1101 + 68] = mem[_1101 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1101 + -mem[64] + 100
            require block.number - bonusEndBlock
            if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
                _757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_757] = 26
                mem[_757 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _789 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_789 + idx + 68] = mem[_757 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_789 + 68] = mem[_789 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _789 + -mem[64] + 100
                require totalAllocPoint
                _841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_841] = 26
                mem[_841 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _868 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_868 + idx + 68] = mem[_841 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_868 + 68] = mem[_868 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _868 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1071 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1071] = 26
                    mem[_1071 + 32] = 'SafeMath: division by zero'
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
                        mem[_1098 + idx + 68] = mem[_1071 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1098 + 68] = mem[_1098 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1098 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                _1129 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1129 + idx + 68] = mem[_1097 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1129 + 68] = mem[_1129 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1129 + -mem[64] + 100
            require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
            if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _814 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_814 + idx + 68] = mem[_788 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_814 + 68] = mem[_814 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _814 + -mem[64] + 100
            require totalAllocPoint
            _866 = mem[64]
            mem[64] = mem[64] + 64
            mem[_866] = 26
            mem[_866 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _896 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_896 + idx + 68] = mem[_866 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_896 + 68] = mem[_896 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _896 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
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
                _1126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1126 + idx + 68] = mem[_1096 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1126 + 68] = mem[_1126 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1126 + -mem[64] + 100
            require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1125] = 26
            mem[_1125 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1155 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1155 + idx + 68] = mem[_1125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1155 + 68] = mem[_1155 + 74 len 26]
            revert with memory
              from mem[64]
               len _1155 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number < bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not -poolInfo[idx].field_512 + block.number:
            _756 = mem[64]
            mem[64] = mem[64] + 64
            mem[_756] = 26
            mem[_756 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _785 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_785 + idx + 68] = mem[_756 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_785 + 68] = mem[_785 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _785 + -mem[64] + 100
            require totalAllocPoint
            _838 = mem[64]
            mem[64] = mem[64] + 64
            mem[_838] = 26
            mem[_838 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _863 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_863 + idx + 68] = mem[_838 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_863 + 68] = mem[_863 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _863 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
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
                _1093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1093 + idx + 68] = mem[_1070 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1093 + 68] = mem[_1093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1093 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1092 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1092] = 26
            mem[_1092 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1121 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1121 + idx + 68] = mem[_1092 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1121 + 68] = mem[_1121 + 74 len 26]
            revert with memory
              from mem[64]
               len _1121 + -mem[64] + 100
        require -poolInfo[idx].field_512 + block.number
        if (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[idx].field_512 + block.number != sub_a62ec584:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
            _784 = mem[64]
            mem[64] = mem[64] + 64
            mem[_784] = 26
            mem[_784 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _810 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_810 + idx + 68] = mem[_784 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_810 + 68] = mem[_810 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _810 + -mem[64] + 100
            require totalAllocPoint
            _861 = mem[64]
            mem[64] = mem[64] + 64
            mem[_861] = 26
            mem[_861 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _892 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_892 + idx + 68] = mem[_861 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_892 + 68] = mem[_892 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _892 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1091 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1091] = 26
                mem[_1091 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1118 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1118 + idx + 68] = mem[_1091 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1118 + 68] = mem[_1118 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1118 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1117] = 26
            mem[_1117 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1149 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1149 + idx + 68] = mem[_1117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1149 + 68] = mem[_1149 + 74 len 26]
            revert with memory
              from mem[64]
               len _1149 + -mem[64] + 100
        require (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
        if (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _809 = mem[64]
        mem[64] = mem[64] + 64
        mem[_809] = 26
        mem[_809 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _834 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_834 + idx + 68] = mem[_809 + idx + 32]
                idx = idx + 32
                continue 
            mem[_834 + 68] = mem[_834 + 74 len 26]
            revert with memory
              from mem[64]
               len _834 + -mem[64] + 100
        require totalAllocPoint
        _890 = mem[64]
        mem[64] = mem[64] + 64
        mem[_890] = 26
        mem[_890 + 32] = 'SafeMath: division by zero'
        if devFundDivRate <= 0:
            _929 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_929 + idx + 68] = mem[_890 + idx + 32]
                idx = idx + 32
                continue 
            mem[_929 + 68] = mem[_929 + 74 len 26]
            revert with memory
              from mem[64]
               len _929 + -mem[64] + 100
        require devFundDivRate
        require ext_code.size(sub_0cefcdc8Address)
        call sub_0cefcdc8Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_0cefcdc8Address)
        call sub_0cefcdc8Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
            _1116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1116] = 26
            mem[_1116 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1146 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1146 + idx + 68] = mem[_1116 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1146 + 68] = mem[_1146 + 74 len 26]
            revert with memory
              from mem[64]
               len _1146 + -mem[64] + 100
        require (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1145] = 26
        mem[_1145 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1176 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1176 + idx + 68] = mem[_1145 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1176 + 68] = mem[_1176 + 74 len 26]
        revert with memory
          from mem[64]
           len _1176 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
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
                _654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_654] = 30
                mem[_654 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_658 + idx + 68] = mem[_654 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_658 + 68] = mem[_658 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _658 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_706] = 26
                    mem[_706 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_715 + idx + 68] = mem[_706 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_715 + 68] = mem[_715 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _715 + -mem[64] + 100
                    require totalAllocPoint
                    _752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_752] = 26
                    mem[_752 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_772 + idx + 68] = mem[_752 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_772 + 68] = mem[_772 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _772 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
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
                        _968 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_968 + idx + 68] = mem[_931 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_968 + 68] = mem[_968 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _968 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_967] = 26
                    mem[_967 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1013 + idx + 68] = mem[_967 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1013 + 68] = mem[_1013 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1013 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_714] = 26
                    mem[_714 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_731 + idx + 68] = mem[_714 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_731 + 68] = mem[_731 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _731 + -mem[64] + 100
                    require totalAllocPoint
                    _770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_770] = 26
                    mem[_770 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_794 + idx + 68] = mem[_770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_794 + 68] = mem[_794 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _794 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_966] = 26
                        mem[_966 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1010 + idx + 68] = mem[_966 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1010 + 68] = mem[_1010 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1010 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1009] = 26
                    mem[_1009 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1052 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1052 + idx + 68] = mem[_1009 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1052 + 68] = mem[_1052 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1052 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                    _730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_730] = 26
                    mem[_730 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _748 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_748 + idx + 68] = mem[_730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_748 + 68] = mem[_748 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _748 + -mem[64] + 100
                    require totalAllocPoint
                    _792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_792] = 26
                    mem[_792 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _821 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_821 + idx + 68] = mem[_792 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_821 + 68] = mem[_821 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _821 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1008] = 26
                        mem[_1008 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1049 + idx + 68] = mem[_1008 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1049 + 68] = mem[_1049 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1049 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1048] = 26
                    mem[_1048 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1082 + idx + 68] = mem[_1048 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1082 + 68] = mem[_1082 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1082 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_747] = 26
                mem[_747 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_766 + idx + 68] = mem[_747 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_766 + 68] = mem[_766 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _766 + -mem[64] + 100
                require totalAllocPoint
                _819 = mem[64]
                mem[64] = mem[64] + 64
                mem[_819] = 26
                mem[_819 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_846 + idx + 68] = mem[_819 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_846 + 68] = mem[_846 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _846 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1047] = 26
                    mem[_1047 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1079 + idx + 68] = mem[_1047 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1079 + 68] = mem[_1079 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1079 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1078 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1078] = 26
                mem[_1078 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1105 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1105 + idx + 68] = mem[_1078 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1105 + 68] = mem[_1105 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1105 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_656] = 30
                mem[_656 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_664 + idx + 68] = mem[_656 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_664 + 68] = mem[_664 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _664 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_695] = 26
                    mem[_695 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_703 + idx + 68] = mem[_695 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_703 + 68] = mem[_703 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _703 + -mem[64] + 100
                    require totalAllocPoint
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_738 + idx + 68] = mem[_722 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_738 + 68] = mem[_738 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _738 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _888 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_888] = 26
                        mem[_888 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_916 + idx + 68] = mem[_888 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_916 + 68] = mem[_916 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _916 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_915] = 26
                    mem[_915 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _948 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_948 + idx + 68] = mem[_915 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_948 + 68] = mem[_948 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _948 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                    _702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_702] = 26
                    mem[_702 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _708 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_708 + idx + 68] = mem[_702 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_708 + 68] = mem[_708 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _708 + -mem[64] + 100
                    require totalAllocPoint
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 26
                    mem[_736 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_756 + idx + 68] = mem[_736 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_756 + 68] = mem[_756 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _756 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _914 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_914] = 26
                        mem[_914 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_945 + idx + 68] = mem[_914 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_945 + 68] = mem[_945 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _945 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_944] = 26
                    mem[_944 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _982 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_982 + idx + 68] = mem[_944 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_982 + 68] = mem[_982 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _982 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_707] = 26
                mem[_707 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _718 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_718 + idx + 68] = mem[_707 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_718 + 68] = mem[_718 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _718 + -mem[64] + 100
                require totalAllocPoint
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 26
                mem[_754 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_776 + idx + 68] = mem[_754 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_776 + 68] = mem[_776 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _776 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                    _943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_943] = 26
                    mem[_943 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_979 + idx + 68] = mem[_943 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_979 + 68] = mem[_979 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _979 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1020 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1020 + idx + 68] = mem[_978 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1020 + 68] = mem[_1020 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1020 + -mem[64] + 100
            _655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_655] = 30
            mem[_655 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _661 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_661 + idx + 68] = mem[_655 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_661 + 68] = mem[_661 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _661 + -mem[64] + 100
            _672 = mem[64]
            mem[64] = mem[64] + 64
            mem[_672] = 30
            mem[_672 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _680 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_680 + idx + 68] = mem[_672 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_680 + 68] = mem[_680 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _680 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_775] = 26
                    mem[_775 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _800 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_800 + idx + 68] = mem[_775 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_800 + 68] = mem[_800 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _800 + -mem[64] + 100
                    require totalAllocPoint
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_885 + idx + 68] = mem[_860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_885 + 68] = mem[_885 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _885 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1089 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1089] = 26
                        mem[_1089 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1115 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1115 + idx + 68] = mem[_1089 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1115 + 68] = mem[_1115 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1115 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1114] = 26
                    mem[_1114 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1143 + idx + 68] = mem[_1114 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1143 + 68] = mem[_1143 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1143 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
                    _799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_799] = 26
                    mem[_799 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _831 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_831 + idx + 68] = mem[_799 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_831 + 68] = mem[_831 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _831 + -mem[64] + 100
                    require totalAllocPoint
                    _883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_883] = 26
                    mem[_883 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_910 + idx + 68] = mem[_883 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_910 + 68] = mem[_910 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _910 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1113 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1113] = 26
                        mem[_1113 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1140 + idx + 68] = mem[_1113 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1140 + 68] = mem[_1140 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1140 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1139] = 26
                    mem[_1139 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1171 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1171 + idx + 68] = mem[_1139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1171 + 68] = mem[_1171 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1171 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_830] = 26
                mem[_830 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_856 + idx + 68] = mem[_830 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_856 + 68] = mem[_856 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _856 + -mem[64] + 100
                require totalAllocPoint
                _908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_908] = 26
                mem[_908 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _938 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_938 + idx + 68] = mem[_908 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_938 + 68] = mem[_938 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _938 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1138] = 26
                    mem[_1138 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1168 + idx + 68] = mem[_1138 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1168 + 68] = mem[_1168 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1168 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1167] = 26
                mem[_1167 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1197 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1197 + idx + 68] = mem[_1167 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1197 + 68] = mem[_1197 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1197 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not -poolInfo[idx].field_512 + block.number:
                _798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_798] = 26
                mem[_798 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_827 + idx + 68] = mem[_798 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_827 + 68] = mem[_827 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _827 + -mem[64] + 100
                require totalAllocPoint
                _880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_880] = 26
                mem[_880 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _905 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_905 + idx + 68] = mem[_880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_905 + 68] = mem[_905 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _905 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
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
                    _1135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1135 + idx + 68] = mem[_1112 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1135 + 68] = mem[_1135 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1135 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1134 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1134] = 26
                mem[_1134 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1163 + idx + 68] = mem[_1134 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1163 + 68] = mem[_1163 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1163 + -mem[64] + 100
            require -poolInfo[idx].field_512 + block.number
            if (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[idx].field_512 + block.number != sub_a62ec584:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
                _826 = mem[64]
                mem[64] = mem[64] + 64
                mem[_826] = 26
                mem[_826 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_852 + idx + 68] = mem[_826 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_852 + 68] = mem[_852 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _852 + -mem[64] + 100
                require totalAllocPoint
                _903 = mem[64]
                mem[64] = mem[64] + 64
                mem[_903] = 26
                mem[_903 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_934 + idx + 68] = mem[_903 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_934 + 68] = mem[_934 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _934 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1133] = 26
                    mem[_1133 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1160 + idx + 68] = mem[_1133 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1160 + 68] = mem[_1160 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1160 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1159] = 26
                mem[_1159 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1191 + idx + 68] = mem[_1159 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1191 + 68] = mem[_1191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1191 + -mem[64] + 100
            require (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
            if (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _851 = mem[64]
            mem[64] = mem[64] + 64
            mem[_851] = 26
            mem[_851 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _876 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_876 + idx + 68] = mem[_851 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_876 + 68] = mem[_876 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _876 + -mem[64] + 100
            require totalAllocPoint
            _932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_932] = 26
            mem[_932 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _971 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_971 + idx + 68] = mem[_932 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_971 + 68] = mem[_971 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _971 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                _1158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1158] = 26
                mem[_1158 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1188 + idx + 68] = mem[_1158 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1188 + 68] = mem[_1188 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1188 + -mem[64] + 100
            require (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1187] = 26
            mem[_1187 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1218 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1218 + idx + 68] = mem[_1187 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1218 + 68] = mem[_1218 + 74 len 26]
            revert with memory
              from mem[64]
               len _1218 + -mem[64] + 100
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
            mem[0] = 7
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
                _663 = mem[64]
                mem[64] = mem[64] + 64
                mem[_663] = 30
                mem[_663 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_666 + idx + 68] = mem[_663 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 68] = mem[_666 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_714] = 26
                    mem[_714 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _723 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_723 + idx + 68] = mem[_714 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_723 + 68] = mem[_723 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _723 + -mem[64] + 100
                    require totalAllocPoint
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_780 + idx + 68] = mem[_760 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_780 + 68] = mem[_780 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _780 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_939] = 26
                        mem[_939 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_976 + idx + 68] = mem[_939 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_976 + 68] = mem[_976 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _976 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_975] = 26
                    mem[_975 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1021 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1021 + idx + 68] = mem[_975 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1021 + 68] = mem[_1021 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1021 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_739 + idx + 68] = mem[_722 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_739 + 68] = mem[_739 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _739 + -mem[64] + 100
                    require totalAllocPoint
                    _778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_778] = 26
                    mem[_778 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _802 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_802 + idx + 68] = mem[_778 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_802 + 68] = mem[_802 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _802 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_974] = 26
                        mem[_974 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1018 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1018 + idx + 68] = mem[_974 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1018 + 68] = mem[_1018 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1018 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1017] = 26
                    mem[_1017 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1060 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1060 + idx + 68] = mem[_1017 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1060 + 68] = mem[_1060 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1060 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                    _738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_738] = 26
                    mem[_738 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_756 + idx + 68] = mem[_738 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_756 + 68] = mem[_756 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _756 + -mem[64] + 100
                    require totalAllocPoint
                    _800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_800] = 26
                    mem[_800 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _829 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_829 + idx + 68] = mem[_800 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_829 + 68] = mem[_829 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _829 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1016] = 26
                        mem[_1016 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1057 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1057 + idx + 68] = mem[_1016 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1057 + 68] = mem[_1057 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1057 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1056] = 26
                    mem[_1056 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1090 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1090 + idx + 68] = mem[_1056 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1090 + 68] = mem[_1090 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1090 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 26
                mem[_755 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _774 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_774 + idx + 68] = mem[_755 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_774 + 68] = mem[_774 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _774 + -mem[64] + 100
                require totalAllocPoint
                _827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_827] = 26
                mem[_827 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _854 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_854 + idx + 68] = mem[_827 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_854 + 68] = mem[_854 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _854 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1055] = 26
                    mem[_1055 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1087 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1087 + idx + 68] = mem[_1055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1087 + 68] = mem[_1087 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1087 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1086 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1086] = 26
                mem[_1086 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1113 + idx + 68] = mem[_1086 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1113 + 68] = mem[_1113 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1113 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_665] = 30
                mem[_665 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_672 + idx + 68] = mem[_665 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_672 + 68] = mem[_672 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _672 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_703] = 26
                    mem[_703 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _711 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_711 + idx + 68] = mem[_703 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_711 + 68] = mem[_711 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _711 + -mem[64] + 100
                    require totalAllocPoint
                    _730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_730] = 26
                    mem[_730 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _746 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_746 + idx + 68] = mem[_730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_746 + 68] = mem[_746 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _746 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _896 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_896] = 26
                        mem[_896 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _924 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_924 + idx + 68] = mem[_896 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_924 + 68] = mem[_924 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _924 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_923] = 26
                    mem[_923 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _956 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_956 + idx + 68] = mem[_923 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_956 + 68] = mem[_956 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _956 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) / block.number - poolInfo[idx].field_512 != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584):
                    _710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_710] = 26
                    mem[_710 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_716 + idx + 68] = mem[_710 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_716 + 68] = mem[_716 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _716 + -mem[64] + 100
                    require totalAllocPoint
                    _744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_744] = 26
                    mem[_744 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_764 + idx + 68] = mem[_744 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_764 + 68] = mem[_764 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _764 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_922] = 26
                        mem[_922 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_953 + idx + 68] = mem[_922 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_953 + 68] = mem[_953 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _953 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_952] = 26
                    mem[_952 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_990 + idx + 68] = mem[_952 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_990 + 68] = mem[_990 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _990 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (poolInfo[idx].field_512 * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_715] = 26
                mem[_715 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _726 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_726 + idx + 68] = mem[_715 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_726 + 68] = mem[_726 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _726 + -mem[64] + 100
                require totalAllocPoint
                _762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_762] = 26
                mem[_762 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _784 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_784 + idx + 68] = mem[_762 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_784 + 68] = mem[_784 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _784 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                    _951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_951] = 26
                    mem[_951 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_987 + idx + 68] = mem[_951 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_987 + 68] = mem[_987 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _987 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 26
                mem[_986 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1028 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1028 + idx + 68] = mem[_986 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1028 + 68] = mem[_1028 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1028 + -mem[64] + 100
            _664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_664] = 30
            mem[_664 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _669 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_669 + idx + 68] = mem[_664 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_669 + 68] = mem[_669 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _669 + -mem[64] + 100
            _680 = mem[64]
            mem[64] = mem[64] + 64
            mem[_680] = 30
            mem[_680 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _688 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_688 + idx + 68] = mem[_680 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_688 + 68] = mem[_688 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _688 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_783] = 26
                    mem[_783 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_808 + idx + 68] = mem[_783 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_808 + 68] = mem[_808 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _808 + -mem[64] + 100
                    require totalAllocPoint
                    _868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_868] = 26
                    mem[_868 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_893 + idx + 68] = mem[_868 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_893 + 68] = mem[_893 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _893 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1097] = 26
                        mem[_1097 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1123 + idx + 68] = mem[_1097 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1123 + 68] = mem[_1123 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1123 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1122] = 26
                    mem[_1122 + 32] = 'SafeMath: division by zero'
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
                        mem[_1151 + idx + 68] = mem[_1122 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1151 + 68] = mem[_1151 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1151 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 26
                    mem[_807 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _839 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_839 + idx + 68] = mem[_807 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_839 + 68] = mem[_839 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _839 + -mem[64] + 100
                    require totalAllocPoint
                    _891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_891] = 26
                    mem[_891 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _918 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_918 + idx + 68] = mem[_891 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_918 + 68] = mem[_918 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _918 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1121 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1121] = 26
                        mem[_1121 + 32] = 'SafeMath: division by zero'
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
                            mem[_1148 + idx + 68] = mem[_1121 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1148 + 68] = mem[_1148 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1148 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                    _1179 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1179 + idx + 68] = mem[_1147 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1179 + 68] = mem[_1179 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1179 + -mem[64] + 100
                require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
                if (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 26
                mem[_838 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_864 + idx + 68] = mem[_838 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_864 + 68] = mem[_864 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _864 + -mem[64] + 100
                require totalAllocPoint
                _916 = mem[64]
                mem[64] = mem[64] + 64
                mem[_916] = 26
                mem[_916 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _946 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_946 + idx + 68] = mem[_916 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_946 + 68] = mem[_946 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _946 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
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
                    _1176 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1176 + idx + 68] = mem[_1146 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1176 + 68] = mem[_1176 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1176 + -mem[64] + 100
                require (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1175] = 26
                mem[_1175 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[idx].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1205 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1205 + idx + 68] = mem[_1175 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1205 + 68] = mem[_1205 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1205 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not -poolInfo[idx].field_512 + block.number:
                _806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_806] = 26
                mem[_806 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_835 + idx + 68] = mem[_806 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_835 + 68] = mem[_835 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _835 + -mem[64] + 100
                require totalAllocPoint
                _888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_888] = 26
                mem[_888 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _913 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_913 + idx + 68] = mem[_888 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_913 + 68] = mem[_913 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _913 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1120] = 26
                    mem[_1120 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1143 + idx + 68] = mem[_1120 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1143 + 68] = mem[_1143 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1143 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1142] = 26
                mem[_1142 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1171 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1171 + idx + 68] = mem[_1142 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1171 + 68] = mem[_1171 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1171 + -mem[64] + 100
            require -poolInfo[idx].field_512 + block.number
            if (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[idx].field_512 + block.number != sub_a62ec584:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
                _834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_834] = 26
                mem[_834 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _860 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_860 + idx + 68] = mem[_834 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_860 + 68] = mem[_860 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _860 + -mem[64] + 100
                require totalAllocPoint
                _911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_911] = 26
                mem[_911 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _942 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_942 + idx + 68] = mem[_911 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_942 + 68] = mem[_942 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _942 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_0cefcdc8Address)
                call sub_0cefcdc8Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1141 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1141] = 26
                    mem[_1141 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1168 + idx + 68] = mem[_1141 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1168 + 68] = mem[_1168 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1168 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1167] = 26
                mem[_1167 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1199 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1199 + idx + 68] = mem[_1167 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1199 + 68] = mem[_1199 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1199 + -mem[64] + 100
            require (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
            if (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_859] = 26
            mem[_859 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _884 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_884 + idx + 68] = mem[_859 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_884 + 68] = mem[_884 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _884 + -mem[64] + 100
            require totalAllocPoint
            _940 = mem[64]
            mem[64] = mem[64] + 64
            mem[_940] = 26
            mem[_940 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _979 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_979 + idx + 68] = mem[_940 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_979 + 68] = mem[_979 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _979 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_0cefcdc8Address)
            call sub_0cefcdc8Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint:
                _1166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1166] = 26
                mem[_1166 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1196 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1196 + idx + 68] = mem[_1166 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1196 + 68] = mem[_1196 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1196 + -mem[64] + 100
            require (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1195] = 26
            mem[_1195 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * sub_a62ec584 * poolInfo[idx].field_256) + (block.number * sub_a62ec584 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1226 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1226 + idx + 68] = mem[_1195 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1226 + 68] = mem[_1226 + 74 len 26]
            revert with memory
              from mem[64]
               len _1226 + -mem[64] + 100
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
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
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
                lastStakeTimes[address(msg.sender)] = block.timestamp
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
                lastStakeTimes[address(msg.sender)] = block.timestamp
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
                require ext_code.size(sub_0cefcdc8Address)
                staticcall sub_0cefcdc8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_0cefcdc8Address)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_0cefcdc8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_0cefcdc8Address.0xa9059cbb with:
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
                require ext_code.size(sub_0cefcdc8Address)
                staticcall sub_0cefcdc8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_0cefcdc8Address)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_0cefcdc8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_0cefcdc8Address.0xa9059cbb with:
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
            lastStakeTimes[address(msg.sender)] = block.timestamp
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
                    lastStakeTimes[address(msg.sender)] = block.timestamp
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
                    lastStakeTimes[address(msg.sender)] = block.timestamp
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
                    require ext_code.size(sub_0cefcdc8Address)
                    staticcall sub_0cefcdc8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_0cefcdc8Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_0cefcdc8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_0cefcdc8Address.0xa9059cbb with:
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
                    require ext_code.size(sub_0cefcdc8Address)
                    staticcall sub_0cefcdc8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_0cefcdc8Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_0cefcdc8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_0cefcdc8Address.0xa9059cbb with:
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
                lastStakeTimes[address(msg.sender)] = block.timestamp
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
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0cefcdc8Address)
                    call sub_0cefcdc8Address.0x40c10f19 with:
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
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
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
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                            require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
                            if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                    lastStakeTimes[address(msg.sender)] = block.timestamp
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
                        require ext_code.size(sub_0cefcdc8Address)
                        staticcall sub_0cefcdc8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0cefcdc8Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_0cefcdc8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_0cefcdc8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_0cefcdc8Address)
                        staticcall sub_0cefcdc8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0cefcdc8Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_0cefcdc8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_0cefcdc8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                    lastStakeTimes[address(msg.sender)] = block.timestamp
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
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_0cefcdc8Address)
                        call sub_0cefcdc8Address.0x40c10f19 with:
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
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) / block.number - poolInfo[arg1].field_512 != sub_a62ec584:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                            require (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584)
                            if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (poolInfo[arg1].field_512 * sub_a62ec584) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                        lastStakeTimes[address(msg.sender)] = block.timestamp
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
                            require ext_code.size(sub_0cefcdc8Address)
                            staticcall sub_0cefcdc8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_0cefcdc8Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_0cefcdc8Address)
                            staticcall sub_0cefcdc8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_0cefcdc8Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                        lastStakeTimes[address(msg.sender)] = block.timestamp
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
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) / block.number - bonusEndBlock != sub_a62ec584:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584)
                                if (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / (block.number * sub_a62ec584) - (bonusEndBlock * sub_a62ec584) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_a62ec584 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not -poolInfo[arg1].field_512 + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_0cefcdc8Address)
                            call sub_0cefcdc8Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require -poolInfo[arg1].field_512 + block.number
                            if (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) / -poolInfo[arg1].field_512 + block.number != sub_a62ec584:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584)
                                if (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * sub_a62ec584) + (block.number * sub_a62ec584) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_0cefcdc8Address)
                                call sub_0cefcdc8Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * sub_a62ec584 * poolInfo[arg1].field_256) + (block.number * sub_a62ec584 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                        lastStakeTimes[address(msg.sender)] = block.timestamp
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
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_0cefcdc8Address)
                            staticcall sub_0cefcdc8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_0cefcdc8Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_0cefcdc8Address)
                            staticcall sub_0cefcdc8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_0cefcdc8Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_0cefcdc8Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[864 len 4] = 0
                        mem[836 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        lastStakeTimes[address(msg.sender)] = block.timestamp
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 842 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
