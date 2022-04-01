contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
address MMSAddress;
address devaddr;
uint256 bonusEndBlock;
uint256 sub_fde0f8b2;
uint256 BONUS_MULTIPLIER;
uint256 sub_be279845;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;

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

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_be279845(?) payable {
    return sub_be279845
}

function MMS() payable {
    return MMSAddress
}

function devaddr() payable {
    return devaddr
}

function sub_fde0f8b2(?) payable {
    return sub_fde0f8b2
}

function _fallback() payable {
    revert
}

function setDev(address arg1) payable {
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

function sub_63d65186(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fde0f8b2 = arg1
}

function sub_404748c9(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fde0f8b2 = arg1
    bonusEndBlock = arg3
    startBlock = arg2
    BONUS_MULTIPLIER = arg4
    sub_be279845 = arg5
}

function checkPoolDuplicate(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
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
        if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
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
    if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_be279845:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) / block.number - poolInfo[arg1].field_512 != sub_fde0f8b2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_e4c3e4ee(?) payable {
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
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
        if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
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
        if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) / block.number - poolInfo[arg1].field_512 != sub_fde0f8b2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2):
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
        if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
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
        if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
    if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
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
    if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
            _629 = mem[64]
            mem[64] = mem[64] + 64
            mem[_629] = 30
            mem[_629 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _629 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_700] = 26
                mem[_700 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _712 + 68] = mem[idx + _700 + 32]
                        idx = idx + 32
                        continue 
                    mem[_712 + 68] = mem[_712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _712 + -mem[64] + 100
                _753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_753] = 26
                mem[_753 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _773 + 68] = mem[idx + _753 + 32]
                        idx = idx + 32
                        continue 
                    mem[_773 + 68] = mem[_773 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _773 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_945] = 26
                    mem[_945 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _992 + 68] = mem[idx + _945 + 32]
                        idx = idx + 32
                        continue 
                    mem[_992 + 68] = mem[_992 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _992 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1017 + 68] = mem[idx + _967 + 32]
                    idx = idx + 32
                    continue 
                mem[_1017 + 68] = mem[_1017 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1017 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_707] = 26
                mem[_707 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _721 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _721 + 68] = mem[idx + _707 + 32]
                        idx = idx + 32
                        continue 
                    mem[_721 + 68] = mem[_721 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _721 + -mem[64] + 100
                _762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_762] = 26
                mem[_762 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _787 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _787 + 68] = mem[idx + _762 + 32]
                        idx = idx + 32
                        continue 
                    mem[_787 + 68] = mem[_787 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _787 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_966] = 26
                    mem[_966 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1014 + 68] = mem[idx + _966 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_991] = 26
                mem[_991 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1038 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1038 + 68] = mem[idx + _991 + 32]
                    idx = idx + 32
                    continue 
                mem[_1038 + 68] = mem[_1038 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1038 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 26
                mem[_711 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _730 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _730 + 68] = mem[idx + _711 + 32]
                        idx = idx + 32
                        continue 
                    mem[_730 + 68] = mem[_730 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _730 + -mem[64] + 100
                _771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_771] = 26
                mem[_771 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _801 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _801 + 68] = mem[idx + _771 + 32]
                        idx = idx + 32
                        continue 
                    mem[_801 + 68] = mem[_801 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _801 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_990] = 26
                    mem[_990 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1035 + 68] = mem[idx + _990 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1035 + 68] = mem[_1035 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1035 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 26
                mem[_1013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1055 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1055 + 68] = mem[idx + _1013 + 32]
                    idx = idx + 32
                    continue 
                mem[_1055 + 68] = mem[_1055 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1055 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _720 = mem[64]
            mem[64] = mem[64] + 64
            mem[_720] = 26
            mem[_720 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _741 + 68] = mem[idx + _720 + 32]
                    idx = idx + 32
                    continue 
                mem[_741 + 68] = mem[_741 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _741 + -mem[64] + 100
            _785 = mem[64]
            mem[64] = mem[64] + 64
            mem[_785] = 26
            mem[_785 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _813 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _813 + 68] = mem[idx + _785 + 32]
                    idx = idx + 32
                    continue 
                mem[_813 + 68] = mem[_813 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _813 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _1012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1012] = 26
                mem[_1012 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1052 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1052 + 68] = mem[idx + _1012 + 32]
                    idx = idx + 32
                    continue 
                mem[_1052 + 68] = mem[_1052 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1052 + -mem[64] + 100
            if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1034 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1034] = 26
            mem[_1034 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1067 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1067 + 68] = mem[idx + _1034 + 32]
                idx = idx + 32
                continue 
            mem[_1067 + 68] = mem[_1067 + 74 len 26]
            revert with memory
              from mem[64]
               len _1067 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _631 = mem[64]
            mem[64] = mem[64] + 64
            mem[_631] = 30
            mem[_631 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _631 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_689] = 26
                mem[_689 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _694 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _694 + 68] = mem[idx + _689 + 32]
                        idx = idx + 32
                        continue 
                    mem[_694 + 68] = mem[_694 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _694 + -mem[64] + 100
                _718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_718] = 26
                mem[_718 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _738 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _738 + 68] = mem[idx + _718 + 32]
                        idx = idx + 32
                        continue 
                    mem[_738 + 68] = mem[_738 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _738 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_900] = 26
                    mem[_900 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _922 + 68] = mem[idx + _900 + 32]
                        idx = idx + 32
                        continue 
                    mem[_922 + 68] = mem[_922 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _922 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _912 = mem[64]
                mem[64] = mem[64] + 64
                mem[_912] = 26
                mem[_912 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                    mem[idx + _940 + 68] = mem[idx + _912 + 32]
                    idx = idx + 32
                    continue 
                mem[_940 + 68] = mem[_940 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _940 + -mem[64] + 100
            if (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) / block.number - poolInfo[idx].field_512 != sub_fde0f8b2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2):
                _692 = mem[64]
                mem[64] = mem[64] + 64
                mem[_692] = 26
                mem[_692 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _697 + 68] = mem[idx + _692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_697 + 68] = mem[_697 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _697 + -mem[64] + 100
                _728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_728] = 26
                mem[_728 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _747 + 68] = mem[idx + _728 + 32]
                        idx = idx + 32
                        continue 
                    mem[_747 + 68] = mem[_747 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _747 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 26
                    mem[_911 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _937 + 68] = mem[idx + _911 + 32]
                        idx = idx + 32
                        continue 
                    mem[_937 + 68] = mem[_937 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _937 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_921] = 26
                mem[_921 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _960 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _960 + 68] = mem[idx + _921 + 32]
                    idx = idx + 32
                    continue 
                mem[_960 + 68] = mem[_960 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _960 + -mem[64] + 100
            if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _693 = mem[64]
            mem[64] = mem[64] + 64
            mem[_693] = 26
            mem[_693 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _701 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _701 + 68] = mem[idx + _693 + 32]
                    idx = idx + 32
                    continue 
                mem[_701 + 68] = mem[_701 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _701 + -mem[64] + 100
            _736 = mem[64]
            mem[64] = mem[64] + 64
            mem[_736] = 26
            mem[_736 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _755 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _755 + 68] = mem[idx + _736 + 32]
                    idx = idx + 32
                    continue 
                mem[_755 + 68] = mem[_755 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _755 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _920 = mem[64]
                mem[64] = mem[64] + 64
                mem[_920] = 26
                mem[_920 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _957 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _957 + 68] = mem[idx + _920 + 32]
                    idx = idx + 32
                    continue 
                mem[_957 + 68] = mem[_957 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _957 + -mem[64] + 100
            if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_936] = 26
            mem[_936 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _981 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _981 + 68] = mem[idx + _936 + 32]
                idx = idx + 32
                continue 
            mem[_981 + 68] = mem[_981 + 74 len 26]
            revert with memory
              from mem[64]
               len _981 + -mem[64] + 100
        _630 = mem[64]
        mem[64] = mem[64] + 64
        mem[_630] = 30
        mem[_630 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _630 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _652 = mem[64]
        mem[64] = mem[64] + 64
        mem[_652] = 30
        mem[_652 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _652 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _778 = mem[64]
                mem[64] = mem[64] + 64
                mem[_778] = 26
                mem[_778 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _807 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _807 + 68] = mem[idx + _778 + 32]
                        idx = idx + 32
                        continue 
                    mem[_807 + 68] = mem[_807 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _807 + -mem[64] + 100
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _895 + 68] = mem[idx + _871 + 32]
                        idx = idx + 32
                        continue 
                    mem[_895 + 68] = mem[_895 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _895 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1106] = 26
                    mem[_1106 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1133 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1133 + 68] = mem[idx + _1106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1133 + 68] = mem[_1133 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1133 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1121] = 26
                mem[_1121 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1147 + 68] = mem[idx + _1121 + 32]
                    idx = idx + 32
                    continue 
                mem[_1147 + 68] = mem[_1147 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1147 + -mem[64] + 100
            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 26
                mem[_793 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _825 + 68] = mem[idx + _793 + 32]
                        idx = idx + 32
                        continue 
                    mem[_825 + 68] = mem[_825 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _825 + -mem[64] + 100
                _883 = mem[64]
                mem[64] = mem[64] + 64
                mem[_883] = 26
                mem[_883 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _906 + 68] = mem[idx + _883 + 32]
                        idx = idx + 32
                        continue 
                    mem[_906 + 68] = mem[_906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _906 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1120] = 26
                    mem[_1120 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1144 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1144 + 68] = mem[idx + _1120 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1144 + 68] = mem[_1144 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1144 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1132] = 26
                mem[_1132 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1160 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1160 + 68] = mem[idx + _1132 + 32]
                    idx = idx + 32
                    continue 
                mem[_1160 + 68] = mem[_1160 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1160 + -mem[64] + 100
            if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _806 = mem[64]
            mem[64] = mem[64] + 64
            mem[_806] = 26
            mem[_806 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _839 + 68] = mem[idx + _806 + 32]
                    idx = idx + 32
                    continue 
                mem[_839 + 68] = mem[_839 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _839 + -mem[64] + 100
            _893 = mem[64]
            mem[64] = mem[64] + 64
            mem[_893] = 26
            mem[_893 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _916 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _916 + 68] = mem[idx + _893 + 32]
                    idx = idx + 32
                    continue 
                mem[_916 + 68] = mem[_916 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _916 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _1131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1131] = 26
                mem[_1131 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1157 + 68] = mem[idx + _1131 + 32]
                    idx = idx + 32
                    continue 
                mem[_1157 + 68] = mem[_1157 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1157 + -mem[64] + 100
            if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1143] = 26
            mem[_1143 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1171 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1171 + 68] = mem[idx + _1143 + 32]
                idx = idx + 32
                continue 
            mem[_1171 + 68] = mem[_1171 + 74 len 26]
            revert with memory
              from mem[64]
               len _1171 + -mem[64] + 100
        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _792 = mem[64]
            mem[64] = mem[64] + 64
            mem[_792] = 26
            mem[_792 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _822 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _822 + 68] = mem[idx + _792 + 32]
                    idx = idx + 32
                    continue 
                mem[_822 + 68] = mem[_822 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _822 + -mem[64] + 100
            _879 = mem[64]
            mem[64] = mem[64] + 64
            mem[_879] = 26
            mem[_879 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _903 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _903 + 68] = mem[idx + _879 + 32]
                    idx = idx + 32
                    continue 
                mem[_903 + 68] = mem[_903 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _903 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1117] = 26
                mem[_1117 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                    mem[idx + _1140 + 68] = mem[idx + _1117 + 32]
                    idx = idx + 32
                    continue 
                mem[_1140 + 68] = mem[_1140 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1140 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1130] = 26
            mem[_1130 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1154 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1154 + 68] = mem[idx + _1130 + 32]
                idx = idx + 32
                continue 
            mem[_1154 + 68] = mem[_1154 + 74 len 26]
            revert with memory
              from mem[64]
               len _1154 + -mem[64] + 100
        if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
            _805 = mem[64]
            mem[64] = mem[64] + 64
            mem[_805] = 26
            mem[_805 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _836 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _836 + 68] = mem[idx + _805 + 32]
                    idx = idx + 32
                    continue 
                mem[_836 + 68] = mem[_836 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _836 + -mem[64] + 100
            _891 = mem[64]
            mem[64] = mem[64] + 64
            mem[_891] = 26
            mem[_891 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _913 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _913 + 68] = mem[idx + _891 + 32]
                    idx = idx + 32
                    continue 
                mem[_913 + 68] = mem[_913 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _913 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1129] = 26
                mem[_1129 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1151 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1151 + 68] = mem[idx + _1129 + 32]
                    idx = idx + 32
                    continue 
                mem[_1151 + 68] = mem[_1151 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1151 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1139] = 26
            mem[_1139 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1167 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1167 + 68] = mem[idx + _1139 + 32]
                idx = idx + 32
                continue 
            mem[_1167 + 68] = mem[_1167 + 74 len 26]
            revert with memory
              from mem[64]
               len _1167 + -mem[64] + 100
        if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _821 = mem[64]
        mem[64] = mem[64] + 64
        mem[_821] = 26
        mem[_821 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _851 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _851 + 68] = mem[idx + _821 + 32]
                idx = idx + 32
                continue 
            mem[_851 + 68] = mem[_851 + 74 len 26]
            revert with memory
              from mem[64]
               len _851 + -mem[64] + 100
        _901 = mem[64]
        mem[64] = mem[64] + 64
        mem[_901] = 26
        mem[_901 + 32] = 'SafeMath: division by zero'
        if not sub_be279845:
            _927 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _927 + 68] = mem[idx + _901 + 32]
                idx = idx + 32
                continue 
            mem[_927 + 68] = mem[_927 + 74 len 26]
            revert with memory
              from mem[64]
               len _927 + -mem[64] + 100
        require ext_code.size(MMSAddress)
        call MMSAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(MMSAddress)
        call MMSAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
            _1138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1138] = 26
            mem[_1138 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1164 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1164 + 68] = mem[idx + _1138 + 32]
                idx = idx + 32
                continue 
            mem[_1164 + 68] = mem[_1164 + 74 len 26]
            revert with memory
              from mem[64]
               len _1164 + -mem[64] + 100
        if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1150] = 26
        mem[_1150 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1178 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1178 + 68] = mem[idx + _1150 + 32]
            idx = idx + 32
            continue 
        mem[_1178 + 68] = mem[_1178 + 74 len 26]
        revert with memory
          from mem[64]
           len _1178 + -mem[64] + 100
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
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
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
                _685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_685] = 30
                mem[_685 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _685 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 26
                    mem[_756 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _768 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _768 + 68] = mem[idx + _756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_768 + 68] = mem[_768 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _768 + -mem[64] + 100
                    _809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_809] = 26
                    mem[_809 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _829 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _829 + 68] = mem[idx + _809 + 32]
                            idx = idx + 32
                            continue 
                        mem[_829 + 68] = mem[_829 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _829 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1001] = 26
                        mem[_1001 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1048 + 68] = mem[idx + _1001 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1048 + 68] = mem[_1048 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1048 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1023] = 26
                    mem[_1023 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1073 + 68] = mem[idx + _1023 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_763] = 26
                    mem[_763 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _777 + 68] = mem[idx + _763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_777 + 68] = mem[_777 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _777 + -mem[64] + 100
                    _818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_818] = 26
                    mem[_818 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _843 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _843 + 68] = mem[idx + _818 + 32]
                            idx = idx + 32
                            continue 
                        mem[_843 + 68] = mem[_843 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _843 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1022] = 26
                        mem[_1022 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1070 + 68] = mem[idx + _1022 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1070 + 68] = mem[_1070 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1070 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1047] = 26
                    mem[_1047 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1094 + 68] = mem[idx + _1047 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1094 + 68] = mem[_1094 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1094 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 26
                    mem[_767 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _786 + 68] = mem[idx + _767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_786 + 68] = mem[_786 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _786 + -mem[64] + 100
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 26
                    mem[_827 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _857 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _857 + 68] = mem[idx + _827 + 32]
                            idx = idx + 32
                            continue 
                        mem[_857 + 68] = mem[_857 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _857 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1046] = 26
                        mem[_1046 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1091 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1091 + 68] = mem[idx + _1046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1091 + 68] = mem[_1091 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1091 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 26
                    mem[_1069 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1111 + 68] = mem[idx + _1069 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1111 + 68] = mem[_1111 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1111 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 26
                mem[_776 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _797 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _797 + 68] = mem[idx + _776 + 32]
                        idx = idx + 32
                        continue 
                    mem[_797 + 68] = mem[_797 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _797 + -mem[64] + 100
                _841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_841] = 26
                mem[_841 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _869 + 68] = mem[idx + _841 + 32]
                        idx = idx + 32
                        continue 
                    mem[_869 + 68] = mem[_869 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _869 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1068] = 26
                    mem[_1068 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1108 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1108 + 68] = mem[idx + _1068 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1108 + 68] = mem[_1108 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1108 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1090 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1090] = 26
                mem[_1090 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1123 + 68] = mem[idx + _1090 + 32]
                    idx = idx + 32
                    continue 
                mem[_1123 + 68] = mem[_1123 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1123 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _687 = mem[64]
                mem[64] = mem[64] + 64
                mem[_687] = 30
                mem[_687 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _687 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_745] = 26
                    mem[_745 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _750 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _750 + 68] = mem[idx + _745 + 32]
                            idx = idx + 32
                            continue 
                        mem[_750 + 68] = mem[_750 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _750 + -mem[64] + 100
                    _774 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_774] = 26
                    mem[_774 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _794 + 68] = mem[idx + _774 + 32]
                            idx = idx + 32
                            continue 
                        mem[_794 + 68] = mem[_794 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _794 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_956] = 26
                        mem[_956 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _978 + 68] = mem[idx + _956 + 32]
                            idx = idx + 32
                            continue 
                        mem[_978 + 68] = mem[_978 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _978 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_968] = 26
                    mem[_968 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _996 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _996 + 68] = mem[idx + _968 + 32]
                        idx = idx + 32
                        continue 
                    mem[_996 + 68] = mem[_996 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _996 + -mem[64] + 100
                if (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) / block.number - poolInfo[idx].field_512 != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2):
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 26
                    mem[_748 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _753 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _753 + 68] = mem[idx + _748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_753 + 68] = mem[_753 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _753 + -mem[64] + 100
                    _784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_784] = 26
                    mem[_784 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _803 + 68] = mem[idx + _784 + 32]
                            idx = idx + 32
                            continue 
                        mem[_803 + 68] = mem[_803 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _803 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_967] = 26
                        mem[_967 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _993 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _993 + 68] = mem[idx + _967 + 32]
                            idx = idx + 32
                            continue 
                        mem[_993 + 68] = mem[_993 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _993 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_977] = 26
                    mem[_977 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1016 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1016 + 68] = mem[idx + _977 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1016 + 68] = mem[_1016 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1016 + -mem[64] + 100
                if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _749 = mem[64]
                mem[64] = mem[64] + 64
                mem[_749] = 26
                mem[_749 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _757 + 68] = mem[idx + _749 + 32]
                        idx = idx + 32
                        continue 
                    mem[_757 + 68] = mem[_757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _757 + -mem[64] + 100
                _792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_792] = 26
                mem[_792 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _811 + 68] = mem[idx + _792 + 32]
                        idx = idx + 32
                        continue 
                    mem[_811 + 68] = mem[_811 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _811 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_976] = 26
                    mem[_976 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1013 + 68] = mem[idx + _976 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1013 + 68] = mem[_1013 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1013 + -mem[64] + 100
                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_992] = 26
                mem[_992 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1037 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1037 + 68] = mem[idx + _992 + 32]
                    idx = idx + 32
                    continue 
                mem[_1037 + 68] = mem[_1037 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1037 + -mem[64] + 100
            _686 = mem[64]
            mem[64] = mem[64] + 64
            mem[_686] = 30
            mem[_686 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _686 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _708 = mem[64]
            mem[64] = mem[64] + 64
            mem[_708] = 30
            mem[_708 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _708 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _863 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _863 + 68] = mem[idx + _834 + 32]
                            idx = idx + 32
                            continue 
                        mem[_863 + 68] = mem[_863 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _863 + -mem[64] + 100
                    _927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_927] = 26
                    mem[_927 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _951 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _951 + 68] = mem[idx + _927 + 32]
                            idx = idx + 32
                            continue 
                        mem[_951 + 68] = mem[_951 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _951 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1162] = 26
                        mem[_1162 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1189 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1189 + 68] = mem[idx + _1162 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1189 + 68] = mem[_1189 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1189 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1177] = 26
                    mem[_1177 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1203 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1203 + 68] = mem[idx + _1177 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1203 + 68] = mem[_1203 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1203 + -mem[64] + 100
                if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
                    _849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_849] = 26
                    mem[_849 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _881 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _881 + 68] = mem[idx + _849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_881 + 68] = mem[_881 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _881 + -mem[64] + 100
                    _939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_939] = 26
                    mem[_939 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _962 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _962 + 68] = mem[idx + _939 + 32]
                            idx = idx + 32
                            continue 
                        mem[_962 + 68] = mem[_962 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _962 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1176] = 26
                        mem[_1176 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1200 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1200 + 68] = mem[idx + _1176 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1200 + 68] = mem[_1200 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1200 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1188] = 26
                    mem[_1188 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _1216 + 68] = mem[idx + _1188 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1216 + 68] = mem[_1216 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1216 + -mem[64] + 100
                if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_862] = 26
                mem[_862 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _895 + 68] = mem[idx + _862 + 32]
                        idx = idx + 32
                        continue 
                    mem[_895 + 68] = mem[_895 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _895 + -mem[64] + 100
                _949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_949] = 26
                mem[_949 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _972 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _972 + 68] = mem[idx + _949 + 32]
                        idx = idx + 32
                        continue 
                    mem[_972 + 68] = mem[_972 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _972 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1187] = 26
                    mem[_1187 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _1213 + 68] = mem[idx + _1187 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1213 + 68] = mem[_1213 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1213 + -mem[64] + 100
                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1199] = 26
                mem[_1199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1227 + 68] = mem[idx + _1199 + 32]
                    idx = idx + 32
                    continue 
                mem[_1227 + 68] = mem[_1227 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1227 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_848] = 26
                mem[_848 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _878 + 68] = mem[idx + _848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_878 + 68] = mem[_878 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _878 + -mem[64] + 100
                _935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_935] = 26
                mem[_935 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _959 + 68] = mem[idx + _935 + 32]
                        idx = idx + 32
                        continue 
                    mem[_959 + 68] = mem[_959 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _959 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1173] = 26
                    mem[_1173 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _1196 + 68] = mem[idx + _1173 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1196 + 68] = mem[_1196 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1196 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1186] = 26
                mem[_1186 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1210 + 68] = mem[idx + _1186 + 32]
                    idx = idx + 32
                    continue 
                mem[_1210 + 68] = mem[_1210 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1210 + -mem[64] + 100
            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                _861 = mem[64]
                mem[64] = mem[64] + 64
                mem[_861] = 26
                mem[_861 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _892 + 68] = mem[idx + _861 + 32]
                        idx = idx + 32
                        continue 
                    mem[_892 + 68] = mem[_892 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _892 + -mem[64] + 100
                _947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_947] = 26
                mem[_947 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _969 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _969 + 68] = mem[idx + _947 + 32]
                        idx = idx + 32
                        continue 
                    mem[_969 + 68] = mem[_969 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _969 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1185] = 26
                    mem[_1185 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1207 + 68] = mem[idx + _1185 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1207 + 68] = mem[_1207 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1207 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1195] = 26
                mem[_1195 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1223 + 68] = mem[idx + _1195 + 32]
                    idx = idx + 32
                    continue 
                mem[_1223 + 68] = mem[_1223 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1223 + -mem[64] + 100
            if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _877 = mem[64]
            mem[64] = mem[64] + 64
            mem[_877] = 26
            mem[_877 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _907 + 68] = mem[idx + _877 + 32]
                    idx = idx + 32
                    continue 
                mem[_907 + 68] = mem[_907 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _907 + -mem[64] + 100
            _957 = mem[64]
            mem[64] = mem[64] + 64
            mem[_957] = 26
            mem[_957 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _983 + 68] = mem[idx + _957 + 32]
                    idx = idx + 32
                    continue 
                mem[_983 + 68] = mem[_983 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _983 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _1194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1194] = 26
                mem[_1194 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1220 + 68] = mem[idx + _1194 + 32]
                    idx = idx + 32
                    continue 
                mem[_1220 + 68] = mem[_1220 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1220 + -mem[64] + 100
            if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1206 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1206] = 26
            mem[_1206 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1234 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1234 + 68] = mem[idx + _1206 + 32]
                idx = idx + 32
                continue 
            mem[_1234 + 68] = mem[_1234 + 74 len 26]
            revert with memory
              from mem[64]
               len _1234 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
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
                _696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_696] = 30
                mem[_696 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _696 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 26
                    mem[_767 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _779 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _779 + 68] = mem[idx + _767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_779 + 68] = mem[_779 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _779 + -mem[64] + 100
                    _820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_820] = 26
                    mem[_820 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _840 + 68] = mem[idx + _820 + 32]
                            idx = idx + 32
                            continue 
                        mem[_840 + 68] = mem[_840 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _840 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1012] = 26
                        mem[_1012 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1059 + 68] = mem[idx + _1012 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1059 + 68] = mem[_1059 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1059 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1034] = 26
                    mem[_1034 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1084 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1084 + 68] = mem[idx + _1034 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1084 + 68] = mem[_1084 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1084 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _774 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_774] = 26
                    mem[_774 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _788 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _788 + 68] = mem[idx + _774 + 32]
                            idx = idx + 32
                            continue 
                        mem[_788 + 68] = mem[_788 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _788 + -mem[64] + 100
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 26
                    mem[_829 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _854 + 68] = mem[idx + _829 + 32]
                            idx = idx + 32
                            continue 
                        mem[_854 + 68] = mem[_854 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _854 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1033] = 26
                        mem[_1033 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1081 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1081 + 68] = mem[idx + _1033 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1081 + 68] = mem[_1081 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1081 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1058] = 26
                    mem[_1058 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1105 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1105 + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1105 + 68] = mem[_1105 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1105 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                    _778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_778] = 26
                    mem[_778 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _797 + 68] = mem[idx + _778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_797 + 68] = mem[_797 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _797 + -mem[64] + 100
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 26
                    mem[_838 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _868 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _868 + 68] = mem[idx + _838 + 32]
                            idx = idx + 32
                            continue 
                        mem[_868 + 68] = mem[_868 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _868 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1057] = 26
                        mem[_1057 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1102 + 68] = mem[idx + _1057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1102 + 68] = mem[_1102 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1102 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1080] = 26
                    mem[_1080 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1122 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1122 + 68] = mem[idx + _1080 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1122 + 68] = mem[_1122 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1122 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_787] = 26
                mem[_787 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _808 + 68] = mem[idx + _787 + 32]
                        idx = idx + 32
                        continue 
                    mem[_808 + 68] = mem[_808 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _808 + -mem[64] + 100
                _852 = mem[64]
                mem[64] = mem[64] + 64
                mem[_852] = 26
                mem[_852 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _880 + 68] = mem[idx + _852 + 32]
                        idx = idx + 32
                        continue 
                    mem[_880 + 68] = mem[_880 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _880 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1079] = 26
                    mem[_1079 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1119 + 68] = mem[idx + _1079 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1119 + 68] = mem[_1119 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1119 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1101] = 26
                mem[_1101 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1134 + 68] = mem[idx + _1101 + 32]
                    idx = idx + 32
                    continue 
                mem[_1134 + 68] = mem[_1134 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1134 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_698] = 30
                mem[_698 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _698 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 26
                    mem[_756 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _761 + 68] = mem[idx + _756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_761 + 68] = mem[_761 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _761 + -mem[64] + 100
                    _785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_785] = 26
                    mem[_785 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _805 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _805 + 68] = mem[idx + _785 + 32]
                            idx = idx + 32
                            continue 
                        mem[_805 + 68] = mem[_805 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _805 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_967] = 26
                        mem[_967 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _989 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _989 + 68] = mem[idx + _967 + 32]
                            idx = idx + 32
                            continue 
                        mem[_989 + 68] = mem[_989 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _989 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_979] = 26
                    mem[_979 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1007 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1007 + 68] = mem[idx + _979 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1007 + 68] = mem[_1007 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1007 + -mem[64] + 100
                if (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) / block.number - poolInfo[idx].field_512 != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2):
                    _759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_759] = 26
                    mem[_759 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _764 + 68] = mem[idx + _759 + 32]
                            idx = idx + 32
                            continue 
                        mem[_764 + 68] = mem[_764 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _764 + -mem[64] + 100
                    _795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_795] = 26
                    mem[_795 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _814 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _814 + 68] = mem[idx + _795 + 32]
                            idx = idx + 32
                            continue 
                        mem[_814 + 68] = mem[_814 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _814 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_978] = 26
                        mem[_978 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1004 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1004 + 68] = mem[idx + _978 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1004 + 68] = mem[_1004 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1004 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_988] = 26
                    mem[_988 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1027 + 68] = mem[idx + _988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1027 + 68] = mem[_1027 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1027 + -mem[64] + 100
                if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[idx].field_512 * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _760 = mem[64]
                mem[64] = mem[64] + 64
                mem[_760] = 26
                mem[_760 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _768 + 68] = mem[idx + _760 + 32]
                        idx = idx + 32
                        continue 
                    mem[_768 + 68] = mem[_768 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _768 + -mem[64] + 100
                _803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_803] = 26
                mem[_803 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _822 + 68] = mem[idx + _803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_822 + 68] = mem[_822 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _822 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_987] = 26
                    mem[_987 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1024 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1024 + 68] = mem[idx + _987 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1024 + 68] = mem[_1024 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1024 + -mem[64] + 100
                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1003] = 26
                mem[_1003 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1048 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1048 + 68] = mem[idx + _1003 + 32]
                    idx = idx + 32
                    continue 
                mem[_1048 + 68] = mem[_1048 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1048 + -mem[64] + 100
            _697 = mem[64]
            mem[64] = mem[64] + 64
            mem[_697] = 30
            mem[_697 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _697 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _719 = mem[64]
            mem[64] = mem[64] + 64
            mem[_719] = 30
            mem[_719 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _719 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_845] = 26
                    mem[_845 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _874 + 68] = mem[idx + _845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_874 + 68] = mem[_874 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _874 + -mem[64] + 100
                    _938 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_938] = 26
                    mem[_938 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _962 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _962 + 68] = mem[idx + _938 + 32]
                            idx = idx + 32
                            continue 
                        mem[_962 + 68] = mem[_962 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _962 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1173 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1173] = 26
                        mem[_1173 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1200 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1200 + 68] = mem[idx + _1173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1200 + 68] = mem[_1200 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1200 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1188] = 26
                    mem[_1188 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                        mem[idx + _1214 + 68] = mem[idx + _1188 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1214 + 68] = mem[_1214 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1214 + -mem[64] + 100
                if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _892 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _892 + 68] = mem[idx + _860 + 32]
                            idx = idx + 32
                            continue 
                        mem[_892 + 68] = mem[_892 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _892 + -mem[64] + 100
                    _950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_950] = 26
                    mem[_950 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _973 + 68] = mem[idx + _950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_973 + 68] = mem[_973 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _973 + -mem[64] + 100
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1187] = 26
                        mem[_1187 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                            mem[idx + _1211 + 68] = mem[idx + _1187 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1211 + 68] = mem[_1211 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1211 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1199] = 26
                    mem[_1199 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1227 + 68] = mem[idx + _1199 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1227 + 68] = mem[_1227 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1227 + -mem[64] + 100
                if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_873] = 26
                mem[_873 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _906 + 68] = mem[idx + _873 + 32]
                        idx = idx + 32
                        continue 
                    mem[_906 + 68] = mem[_906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _906 + -mem[64] + 100
                _960 = mem[64]
                mem[64] = mem[64] + 64
                mem[_960] = 26
                mem[_960 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _983 + 68] = mem[idx + _960 + 32]
                        idx = idx + 32
                        continue 
                    mem[_983 + 68] = mem[_983 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _983 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1198] = 26
                    mem[_1198 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1224 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1224 + 68] = mem[idx + _1198 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1224 + 68] = mem[_1224 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1224 + -mem[64] + 100
                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 26
                mem[_1210 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1238 + 68] = mem[idx + _1210 + 32]
                    idx = idx + 32
                    continue 
                mem[_1238 + 68] = mem[_1238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1238 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _859 = mem[64]
                mem[64] = mem[64] + 64
                mem[_859] = 26
                mem[_859 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _889 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _889 + 68] = mem[idx + _859 + 32]
                        idx = idx + 32
                        continue 
                    mem[_889 + 68] = mem[_889 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _889 + -mem[64] + 100
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 26
                mem[_946 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _970 + 68] = mem[idx + _946 + 32]
                        idx = idx + 32
                        continue 
                    mem[_970 + 68] = mem[_970 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _970 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1184 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1184] = 26
                    mem[_1184 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1207 + 68] = mem[idx + _1184 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1207 + 68] = mem[_1207 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1207 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1197] = 26
                mem[_1197 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1221 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1221 + 68] = mem[idx + _1197 + 32]
                    idx = idx + 32
                    continue 
                mem[_1221 + 68] = mem[_1221 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1221 + -mem[64] + 100
            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                _872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_872] = 26
                mem[_872 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _903 + 68] = mem[idx + _872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 68] = mem[_903 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                _958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_958] = 26
                mem[_958 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _980 + 68] = mem[idx + _958 + 32]
                        idx = idx + 32
                        continue 
                    mem[_980 + 68] = mem[_980 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _980 + -mem[64] + 100
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(MMSAddress)
                call MMSAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1196 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1196] = 26
                    mem[_1196 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1218 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1218 + 68] = mem[idx + _1196 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1218 + 68] = mem[_1218 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1218 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1206] = 26
                mem[_1206 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1234 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1234 + 68] = mem[idx + _1206 + 32]
                    idx = idx + 32
                    continue 
                mem[_1234 + 68] = mem[_1234 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1234 + -mem[64] + 100
            if (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _888 = mem[64]
            mem[64] = mem[64] + 64
            mem[_888] = 26
            mem[_888 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _918 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _918 + 68] = mem[idx + _888 + 32]
                    idx = idx + 32
                    continue 
                mem[_918 + 68] = mem[_918 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _918 + -mem[64] + 100
            _968 = mem[64]
            mem[64] = mem[64] + 64
            mem[_968] = 26
            mem[_968 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _994 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _994 + 68] = mem[idx + _968 + 32]
                    idx = idx + 32
                    continue 
                mem[_994 + 68] = mem[_994 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _994 + -mem[64] + 100
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(MMSAddress)
            call MMSAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint:
                _1205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1205] = 26
                mem[_1205 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1231 + 68] = mem[idx + _1205 + 32]
                    idx = idx + 32
                    continue 
                mem[_1231 + 68] = mem[_1231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1231 + -mem[64] + 100
            if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1217] = 26
            mem[_1217 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[idx].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1245 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1245 + 68] = mem[idx + _1217 + 32]
                idx = idx + 32
                continue 
            mem[_1245 + 68] = mem[_1245 + 74 len 26]
            revert with memory
              from mem[64]
               len _1245 + -mem[64] + 100
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storA66C[stor7.length] = arg1
    if block.number > startBlock:
        storA66C[stor7.length] = block.number
    else:
        storA66C[stor7.length] = startBlock
    storA66C[stor7.length] = 0
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if msg.sender == arg3:
        revert with 0, 'deposit: invalid ref address'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not ext_code.size(poolInfo[arg1].field_0):
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
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(MMSAddress)
                    staticcall MMSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(MMSAddress)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call MMSAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call MMSAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(MMSAddress)
                    staticcall MMSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(MMSAddress)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call MMSAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call MMSAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not ext_code.size(poolInfo[arg1].field_0):
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
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
            if not userInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
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
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(MMSAddress)
                        staticcall MMSAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(MMSAddress)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call MMSAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call MMSAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(MMSAddress)
                        staticcall MMSAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(MMSAddress)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call MMSAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call MMSAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_be279845:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(MMSAddress)
                    call MMSAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(MMSAddress)
                            staticcall MMSAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(MMSAddress)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call MMSAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call MMSAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(MMSAddress)
                            staticcall MMSAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(MMSAddress)
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call MMSAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call MMSAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(MMSAddress)
                        call MMSAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) / block.number - poolInfo[arg1].field_512 != sub_fde0f8b2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (poolInfo[arg1].field_512 * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 650 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(MMSAddress)
                                staticcall MMSAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(MMSAddress)
                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                else:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(MMSAddress)
                                staticcall MMSAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(MMSAddress)
                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                else:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 778 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) / block.number - bonusEndBlock != sub_fde0f8b2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(MMSAddress)
                            call MMSAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_fde0f8b2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / (block.number * sub_fde0f8b2) - (bonusEndBlock * sub_fde0f8b2) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(MMSAddress)
                                call MMSAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fde0f8b2 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_fde0f8b2 * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_fde0f8b2 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[644]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 723 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 714 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(MMSAddress)
                                staticcall MMSAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(MMSAddress)
                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                else:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(MMSAddress)
                                staticcall MMSAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(MMSAddress)
                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                else:
                                    call MMSAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
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
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[772]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 851 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 842 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
