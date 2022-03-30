contract main {




// =====================  Runtime code  =====================


address owner;
address sub_508b8372Address;
address devaddr;
uint256 bonusEndBlock;
uint256 sub_109aa43e;
uint256 BONUS_MULTIPLIER;
uint256 sub_be279845;
array of struct sub_b119e0c3;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;

function poolLength() payable {
    return sub_b119e0c3.length
}

function sub_109aa43e(?) payable {
    return sub_109aa43e
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b119e0c3.length
    return sub_b119e0c3[arg1].field_0, sub_b119e0c3[arg1].field_256, sub_b119e0c3[arg1].field_512, sub_b119e0c3[arg1].field_768
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

function sub_508b8372(?) payable {
    return sub_508b8372Address
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

function sub_b119e0c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b119e0c3.length
    return sub_b119e0c3[arg1].field_256, sub_b119e0c3[arg1].field_512, sub_b119e0c3[arg1].field_768
}

function sub_be279845(?) payable {
    return sub_be279845
}

function devaddr() payable {
    return devaddr
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_715d9163(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_109aa43e = arg1
}

function sub_404748c9(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_109aa43e = arg1
    bonusEndBlock = arg3
    startBlock = arg2
    BONUS_MULTIPLIER = arg4
    sub_be279845 = arg5
}

function checkPoolDuplicate(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_b119e0c3.length:
        mem[0] = 7
        if sub_b119e0c3[idx].field_0 == arg1:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
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
        if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
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
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if arg2 - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if not ext_code.size(sub_b119e0c3[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call sub_b119e0c3[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if block.number > sub_b119e0c3[arg1].field_512:
        require ext_code.size(sub_b119e0c3[arg1].field_0)
        staticcall sub_b119e0c3[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if sub_b119e0c3[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_be279845:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if sub_b119e0c3[arg1].field_512 >= bonusEndBlock:
                    if sub_b119e0c3[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - sub_b119e0c3[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[arg1].field_512 != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b119e0c3[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - sub_b119e0c3[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        sub_b119e0c3[arg1].field_512 = block.number
}

function sub_4b07a8fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < sub_b119e0c3.length
    require ext_code.size(sub_b119e0c3[arg1].field_0)
    staticcall sub_b119e0c3[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= sub_b119e0c3[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b119e0c3[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b119e0c3[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if sub_b119e0c3[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - sub_b119e0c3[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if sub_b119e0c3[arg1].field_512 >= bonusEndBlock:
        if sub_b119e0c3[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - sub_b119e0c3[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[arg1].field_512 != sub_109aa43e:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_b119e0c3[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - sub_b119e0c3[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if block.number - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (sub_b119e0c3[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if block.number <= sub_b119e0c3[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_508b8372Address)
                staticcall sub_508b8372Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_508b8372Address)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_508b8372Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call sub_508b8372Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_508b8372Address)
                staticcall sub_508b8372Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_508b8372Address)
                if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_508b8372Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_508b8372Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if not arg2:
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if arg2 > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][msg.sender].field_0 -= arg2
            if not ext_code.size(sub_b119e0c3[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[516 len 0] = 0
            call sub_b119e0c3[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                mem[ceil32(return_data.size) + 554 len 31]
                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(sub_b119e0c3[arg1].field_0)
        staticcall sub_b119e0c3[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_b119e0c3[arg1].field_512 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_508b8372Address)
                    staticcall sub_508b8372Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_508b8372Address)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_508b8372Address)
                    staticcall sub_508b8372Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_508b8372Address)
                    if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not ext_code.size(sub_b119e0c3[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[516 len 0] = 0
                call sub_b119e0c3[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if sub_b119e0c3[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_be279845:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(sub_508b8372Address)
                        staticcall sub_508b8372Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_508b8372Address)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(sub_508b8372Address)
                        staticcall sub_508b8372Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_508b8372Address)
                        if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not ext_code.size(sub_b119e0c3[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[772 len 0] = 0
                    call sub_b119e0c3[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[740]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 819 len 22]
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                        mem[ceil32(return_data.size) + 810 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if sub_b119e0c3[arg1].field_512 >= bonusEndBlock:
                    if sub_b119e0c3[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - sub_b119e0c3[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[arg1].field_512 != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(sub_b119e0c3[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[772 len 0] = 0
                        call sub_b119e0c3[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[740]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 819 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                            mem[ceil32(return_data.size) + 810 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b119e0c3[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - sub_b119e0c3[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[645 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if arg2 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 -= arg2
                        if not ext_code.size(sub_b119e0c3[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[836 len 0] = 0
                        call sub_b119e0c3[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[804]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 883 len 22]
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                            mem[ceil32(return_data.size) + 874 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_b119e0c3.length:
        mem[0] = 7
        if block.number <= sub_b119e0c3[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_b119e0c3[idx].field_0)
        staticcall sub_b119e0c3[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_b119e0c3[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _629 = mem[64]
            mem[64] = mem[64] + 64
            mem[_629] = 30
            mem[_629 + 32] = 'SafeMath: subtraction overflow'
            if sub_b119e0c3[idx].field_512 > block.number:
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
            if not block.number - sub_b119e0c3[idx].field_512:
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_991] = 26
                mem[_991 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 26
                mem[_1013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
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
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                _1012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1012] = 26
                mem[_1012 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1034 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1034] = 26
            mem[_1034 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if sub_b119e0c3[idx].field_512 >= bonusEndBlock:
            _631 = mem[64]
            mem[64] = mem[64] + 64
            mem[_631] = 30
            mem[_631 + 32] = 'SafeMath: subtraction overflow'
            if sub_b119e0c3[idx].field_512 > block.number:
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
            if not block.number - sub_b119e0c3[idx].field_512:
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _912 = mem[64]
                mem[64] = mem[64] + 64
                mem[_912] = 26
                mem[_912 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[idx].field_512 != sub_109aa43e:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e):
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_921] = 26
                mem[_921 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
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
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                _920 = mem[64]
                mem[64] = mem[64] + 64
                mem[_920] = 26
                mem[_920 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_936] = 26
            mem[_936 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if sub_b119e0c3[idx].field_512 > bonusEndBlock:
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
        if not bonusEndBlock - sub_b119e0c3[idx].field_512:
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1121] = 26
                mem[_1121 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
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
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
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
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
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
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1132] = 26
                mem[_1132 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
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
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                _1131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1131] = 26
                mem[_1131 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1143] = 26
            mem[_1143 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
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
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
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
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1130] = 26
            mem[_1130 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
        if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
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
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
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
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1139] = 26
            mem[_1139 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
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
        require ext_code.size(sub_508b8372Address)
        call sub_508b8372Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_508b8372Address)
        call sub_508b8372Address.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
            _1138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1138] = 26
            mem[_1138 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
        if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
        _1150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1150] = 26
        mem[_1150 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_b119e0c3[idx].field_512 = block.number
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
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if arg3:
        idx = 0
        while idx < sub_b119e0c3.length:
            mem[0] = 7
            if block.number <= sub_b119e0c3[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_b119e0c3[idx].field_0)
            staticcall sub_b119e0c3[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                sub_b119e0c3[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_689] = 30
                mem[_689 + 32] = 'SafeMath: subtraction overflow'
                if sub_b119e0c3[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _689 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[idx].field_512:
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _772 + 68] = mem[idx + _760 + 32]
                            idx = idx + 32
                            continue 
                        mem[_772 + 68] = mem[_772 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _772 + -mem[64] + 100
                    _813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_813] = 26
                    mem[_813 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _833 + 68] = mem[idx + _813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_833 + 68] = mem[_833 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _833 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1005] = 26
                        mem[_1005 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1052 + 68] = mem[idx + _1005 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1052 + 68] = mem[_1052 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1052 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1027] = 26
                    mem[_1027 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1077 + 68] = mem[idx + _1027 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 26
                    mem[_767 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _781 + 68] = mem[idx + _767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_781 + 68] = mem[_781 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _781 + -mem[64] + 100
                    _822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_822] = 26
                    mem[_822 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _847 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _847 + 68] = mem[idx + _822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_847 + 68] = mem[_847 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _847 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1026] = 26
                        mem[_1026 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1074 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1074 + 68] = mem[idx + _1026 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1074 + 68] = mem[_1074 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1074 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1051 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1051] = 26
                    mem[_1051 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1098 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1098 + 68] = mem[idx + _1051 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1098 + 68] = mem[_1098 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1098 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                    _771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_771] = 26
                    mem[_771 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _790 + 68] = mem[idx + _771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_790 + 68] = mem[_790 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _790 + -mem[64] + 100
                    _831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_831] = 26
                    mem[_831 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _861 + 68] = mem[idx + _831 + 32]
                            idx = idx + 32
                            continue 
                        mem[_861 + 68] = mem[_861 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _861 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1050] = 26
                        mem[_1050 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1095 + 68] = mem[idx + _1050 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1095 + 68] = mem[_1095 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1095 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1073] = 26
                    mem[_1073 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1115 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1115 + 68] = mem[idx + _1073 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1115 + 68] = mem[_1115 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1115 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_780] = 26
                mem[_780 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _801 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _801 + 68] = mem[idx + _780 + 32]
                        idx = idx + 32
                        continue 
                    mem[_801 + 68] = mem[_801 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _801 + -mem[64] + 100
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _873 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _873 + 68] = mem[idx + _845 + 32]
                        idx = idx + 32
                        continue 
                    mem[_873 + 68] = mem[_873 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _873 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _1072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1072] = 26
                    mem[_1072 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1112 + 68] = mem[idx + _1072 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1112 + 68] = mem[_1112 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1112 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1094] = 26
                mem[_1094 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1127 + 68] = mem[idx + _1094 + 32]
                    idx = idx + 32
                    continue 
                mem[_1127 + 68] = mem[_1127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1127 + -mem[64] + 100
            if sub_b119e0c3[idx].field_512 >= bonusEndBlock:
                _691 = mem[64]
                mem[64] = mem[64] + 64
                mem[_691] = 30
                mem[_691 + 32] = 'SafeMath: subtraction overflow'
                if sub_b119e0c3[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _691 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[idx].field_512:
                    _749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_749] = 26
                    mem[_749 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _754 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _754 + 68] = mem[idx + _749 + 32]
                            idx = idx + 32
                            continue 
                        mem[_754 + 68] = mem[_754 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _754 + -mem[64] + 100
                    _778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_778] = 26
                    mem[_778 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _798 + 68] = mem[idx + _778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_798 + 68] = mem[_798 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _798 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_960] = 26
                        mem[_960 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _982 + 68] = mem[idx + _960 + 32]
                            idx = idx + 32
                            continue 
                        mem[_982 + 68] = mem[_982 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _982 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _972 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_972] = 26
                    mem[_972 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1000 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1000 + 68] = mem[idx + _972 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1000 + 68] = mem[_1000 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1000 + -mem[64] + 100
                if (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[idx].field_512 != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e):
                    _752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_752] = 26
                    mem[_752 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _757 + 68] = mem[idx + _752 + 32]
                            idx = idx + 32
                            continue 
                        mem[_757 + 68] = mem[_757 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _757 + -mem[64] + 100
                    _788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_788] = 26
                    mem[_788 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _807 + 68] = mem[idx + _788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_807 + 68] = mem[_807 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _807 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_971] = 26
                        mem[_971 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _997 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _997 + 68] = mem[idx + _971 + 32]
                            idx = idx + 32
                            continue 
                        mem[_997 + 68] = mem[_997 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _997 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_981] = 26
                    mem[_981 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1020 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1020 + 68] = mem[idx + _981 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1020 + 68] = mem[_1020 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1020 + -mem[64] + 100
                if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_753] = 26
                mem[_753 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _761 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _761 + 68] = mem[idx + _753 + 32]
                        idx = idx + 32
                        continue 
                    mem[_761 + 68] = mem[_761 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _761 + -mem[64] + 100
                _796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_796] = 26
                mem[_796 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _815 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _815 + 68] = mem[idx + _796 + 32]
                        idx = idx + 32
                        continue 
                    mem[_815 + 68] = mem[_815 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _815 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_980] = 26
                    mem[_980 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1017 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1017 + 68] = mem[idx + _980 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1017 + 68] = mem[_1017 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1017 + -mem[64] + 100
                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _996 = mem[64]
                mem[64] = mem[64] + 64
                mem[_996] = 26
                mem[_996 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1041 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1041 + 68] = mem[idx + _996 + 32]
                    idx = idx + 32
                    continue 
                mem[_1041 + 68] = mem[_1041 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1041 + -mem[64] + 100
            _690 = mem[64]
            mem[64] = mem[64] + 64
            mem[_690] = 30
            mem[_690 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _690 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_712] = 30
            mem[_712 + 32] = 'SafeMath: subtraction overflow'
            if sub_b119e0c3[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _712 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - sub_b119e0c3[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 26
                    mem[_838 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _867 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _867 + 68] = mem[idx + _838 + 32]
                            idx = idx + 32
                            continue 
                        mem[_867 + 68] = mem[_867 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _867 + -mem[64] + 100
                    _931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_931] = 26
                    mem[_931 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _955 + 68] = mem[idx + _931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_955 + 68] = mem[_955 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _955 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1166] = 26
                        mem[_1166 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1193 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1193 + 68] = mem[idx + _1166 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1193 + 68] = mem[_1193 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1193 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1181 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1181] = 26
                    mem[_1181 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1207 + 68] = mem[idx + _1181 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1207 + 68] = mem[_1207 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1207 + -mem[64] + 100
                if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
                    _853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_853] = 26
                    mem[_853 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _885 + 68] = mem[idx + _853 + 32]
                            idx = idx + 32
                            continue 
                        mem[_885 + 68] = mem[_885 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _885 + -mem[64] + 100
                    _943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_943] = 26
                    mem[_943 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _966 + 68] = mem[idx + _943 + 32]
                            idx = idx + 32
                            continue 
                        mem[_966 + 68] = mem[_966 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _966 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1180 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1180] = 26
                        mem[_1180 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1204 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1204 + 68] = mem[idx + _1180 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1204 + 68] = mem[_1204 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1204 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1192 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1192] = 26
                    mem[_1192 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1220 + 68] = mem[idx + _1192 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1220 + 68] = mem[_1220 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1220 + -mem[64] + 100
                if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_866] = 26
                mem[_866 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _899 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _899 + 68] = mem[idx + _866 + 32]
                        idx = idx + 32
                        continue 
                    mem[_899 + 68] = mem[_899 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _899 + -mem[64] + 100
                _953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_953] = 26
                mem[_953 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _976 + 68] = mem[idx + _953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_976 + 68] = mem[_976 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _976 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _1191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1191] = 26
                    mem[_1191 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1217 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1217 + 68] = mem[idx + _1191 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1217 + 68] = mem[_1217 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1217 + -mem[64] + 100
                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1203] = 26
                mem[_1203 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1231 + 68] = mem[idx + _1203 + 32]
                    idx = idx + 32
                    continue 
                mem[_1231 + 68] = mem[_1231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1231 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
                _852 = mem[64]
                mem[64] = mem[64] + 64
                mem[_852] = 26
                mem[_852 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _882 + 68] = mem[idx + _852 + 32]
                        idx = idx + 32
                        continue 
                    mem[_882 + 68] = mem[_882 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _882 + -mem[64] + 100
                _939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_939] = 26
                mem[_939 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _963 + 68] = mem[idx + _939 + 32]
                        idx = idx + 32
                        continue 
                    mem[_963 + 68] = mem[_963 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _963 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1177] = 26
                    mem[_1177 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1200 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1200 + 68] = mem[idx + _1177 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1200 + 68] = mem[_1200 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1200 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1190] = 26
                mem[_1190 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1214 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1214 + 68] = mem[idx + _1190 + 32]
                    idx = idx + 32
                    continue 
                mem[_1214 + 68] = mem[_1214 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1214 + -mem[64] + 100
            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                _865 = mem[64]
                mem[64] = mem[64] + 64
                mem[_865] = 26
                mem[_865 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _896 + 68] = mem[idx + _865 + 32]
                        idx = idx + 32
                        continue 
                    mem[_896 + 68] = mem[_896 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _896 + -mem[64] + 100
                _951 = mem[64]
                mem[64] = mem[64] + 64
                mem[_951] = 26
                mem[_951 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _973 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _973 + 68] = mem[idx + _951 + 32]
                        idx = idx + 32
                        continue 
                    mem[_973 + 68] = mem[_973 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _973 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1189] = 26
                    mem[_1189 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1211 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1211 + 68] = mem[idx + _1189 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1211 + 68] = mem[_1211 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1211 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1199] = 26
                mem[_1199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _881 = mem[64]
            mem[64] = mem[64] + 64
            mem[_881] = 26
            mem[_881 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _911 + 68] = mem[idx + _881 + 32]
                    idx = idx + 32
                    continue 
                mem[_911 + 68] = mem[_911 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _911 + -mem[64] + 100
            _961 = mem[64]
            mem[64] = mem[64] + 64
            mem[_961] = 26
            mem[_961 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _987 + 68] = mem[idx + _961 + 32]
                    idx = idx + 32
                    continue 
                mem[_987 + 68] = mem[_987 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _987 + -mem[64] + 100
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                _1198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1198] = 26
                mem[_1198 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
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
            if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1210] = 26
            mem[_1210 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
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
    require arg1 < sub_b119e0c3.length
    if sub_b119e0c3[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - sub_b119e0c3[arg1].field_256
    require arg1 < sub_b119e0c3.length
    sub_b119e0c3[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < sub_b119e0c3.length:
            mem[0] = 7
            if block.number <= sub_b119e0c3[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_b119e0c3[idx].field_0)
            staticcall sub_b119e0c3[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                sub_b119e0c3[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_698] = 30
                mem[_698 + 32] = 'SafeMath: subtraction overflow'
                if sub_b119e0c3[idx].field_512 > block.number:
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
                if not block.number - sub_b119e0c3[idx].field_512:
                    _769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_769] = 26
                    mem[_769 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _781 + 68] = mem[idx + _769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_781 + 68] = mem[_781 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _781 + -mem[64] + 100
                    _822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_822] = 26
                    mem[_822 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _842 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _842 + 68] = mem[idx + _822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_842 + 68] = mem[_842 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _842 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1014] = 26
                        mem[_1014 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1061 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1061 + 68] = mem[idx + _1014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1061 + 68] = mem[_1061 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1061 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 26
                    mem[_1036 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1086 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1086 + 68] = mem[idx + _1036 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1086 + 68] = mem[_1086 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1086 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
                    _776 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_776] = 26
                    mem[_776 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _790 + 68] = mem[idx + _776 + 32]
                            idx = idx + 32
                            continue 
                        mem[_790 + 68] = mem[_790 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _790 + -mem[64] + 100
                    _831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_831] = 26
                    mem[_831 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _856 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _856 + 68] = mem[idx + _831 + 32]
                            idx = idx + 32
                            continue 
                        mem[_856 + 68] = mem[_856 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _856 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1035] = 26
                        mem[_1035 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1083 + 68] = mem[idx + _1035 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1083 + 68] = mem[_1083 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1083 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1060] = 26
                    mem[_1060 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1107 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1107 + 68] = mem[idx + _1060 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1107 + 68] = mem[_1107 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1107 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                    _780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_780] = 26
                    mem[_780 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _799 + 68] = mem[idx + _780 + 32]
                            idx = idx + 32
                            continue 
                        mem[_799 + 68] = mem[_799 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _799 + -mem[64] + 100
                    _840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_840] = 26
                    mem[_840 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _870 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _870 + 68] = mem[idx + _840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_870 + 68] = mem[_870 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _870 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1059 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1059] = 26
                        mem[_1059 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1104 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1104 + 68] = mem[idx + _1059 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1104 + 68] = mem[_1104 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1104 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1082] = 26
                    mem[_1082 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1124 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1124 + 68] = mem[idx + _1082 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1124 + 68] = mem[_1124 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1124 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _789 = mem[64]
                mem[64] = mem[64] + 64
                mem[_789] = 26
                mem[_789 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _810 + 68] = mem[idx + _789 + 32]
                        idx = idx + 32
                        continue 
                    mem[_810 + 68] = mem[_810 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _810 + -mem[64] + 100
                _854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_854] = 26
                mem[_854 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _882 + 68] = mem[idx + _854 + 32]
                        idx = idx + 32
                        continue 
                    mem[_882 + 68] = mem[_882 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _882 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _1081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1081] = 26
                    mem[_1081 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1121 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1121 + 68] = mem[idx + _1081 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1121 + 68] = mem[_1121 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1121 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 26
                mem[_1103 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1136 + 68] = mem[idx + _1103 + 32]
                    idx = idx + 32
                    continue 
                mem[_1136 + 68] = mem[_1136 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1136 + -mem[64] + 100
            if sub_b119e0c3[idx].field_512 >= bonusEndBlock:
                _700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_700] = 30
                mem[_700 + 32] = 'SafeMath: subtraction overflow'
                if sub_b119e0c3[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _700 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[idx].field_512:
                    _758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_758] = 26
                    mem[_758 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _763 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _763 + 68] = mem[idx + _758 + 32]
                            idx = idx + 32
                            continue 
                        mem[_763 + 68] = mem[_763 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _763 + -mem[64] + 100
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _807 + 68] = mem[idx + _787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_807 + 68] = mem[_807 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _807 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_969] = 26
                        mem[_969 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _991 + 68] = mem[idx + _969 + 32]
                            idx = idx + 32
                            continue 
                        mem[_991 + 68] = mem[_991 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _991 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_981] = 26
                    mem[_981 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1009 + 68] = mem[idx + _981 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1009 + 68] = mem[_1009 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1009 + -mem[64] + 100
                if (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[idx].field_512 != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e):
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _766 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _766 + 68] = mem[idx + _761 + 32]
                            idx = idx + 32
                            continue 
                        mem[_766 + 68] = mem[_766 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _766 + -mem[64] + 100
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _816 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _816 + 68] = mem[idx + _797 + 32]
                            idx = idx + 32
                            continue 
                        mem[_816 + 68] = mem[_816 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _816 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _980 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_980] = 26
                        mem[_980 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1006 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1006 + 68] = mem[idx + _980 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1006 + 68] = mem[_1006 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1006 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_990] = 26
                    mem[_990 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1029 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1029 + 68] = mem[idx + _990 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1029 + 68] = mem[_1029 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1029 + -mem[64] + 100
                if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_762] = 26
                mem[_762 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _770 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _770 + 68] = mem[idx + _762 + 32]
                        idx = idx + 32
                        continue 
                    mem[_770 + 68] = mem[_770 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _770 + -mem[64] + 100
                _805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_805] = 26
                mem[_805 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _824 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _824 + 68] = mem[idx + _805 + 32]
                        idx = idx + 32
                        continue 
                    mem[_824 + 68] = mem[_824 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _824 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_989] = 26
                    mem[_989 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1026 + 68] = mem[idx + _989 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1026 + 68] = mem[_1026 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1026 + -mem[64] + 100
                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1005] = 26
                mem[_1005 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1050 + 68] = mem[idx + _1005 + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            _699 = mem[64]
            mem[64] = mem[64] + 64
            mem[_699] = 30
            mem[_699 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _699 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _721 = mem[64]
            mem[64] = mem[64] + 64
            mem[_721] = 30
            mem[_721 + 32] = 'SafeMath: subtraction overflow'
            if sub_b119e0c3[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _721 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - sub_b119e0c3[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 26
                    mem[_847 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _876 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _876 + 68] = mem[idx + _847 + 32]
                            idx = idx + 32
                            continue 
                        mem[_876 + 68] = mem[_876 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _876 + -mem[64] + 100
                    _940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_940] = 26
                    mem[_940 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _964 + 68] = mem[idx + _940 + 32]
                            idx = idx + 32
                            continue 
                        mem[_964 + 68] = mem[_964 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _964 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1175] = 26
                        mem[_1175 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1202 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1202 + 68] = mem[idx + _1175 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1202 + 68] = mem[_1202 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1202 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1190] = 26
                    mem[_1190 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1216 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1216 + 68] = mem[idx + _1190 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1216 + 68] = mem[_1216 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1216 + -mem[64] + 100
                if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
                    _862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_862] = 26
                    mem[_862 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _894 + 68] = mem[idx + _862 + 32]
                            idx = idx + 32
                            continue 
                        mem[_894 + 68] = mem[_894 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _894 + -mem[64] + 100
                    _952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_952] = 26
                    mem[_952 + 32] = 'SafeMath: division by zero'
                    if not sub_be279845:
                        _975 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _975 + 68] = mem[idx + _952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_975 + 68] = mem[_975 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _975 + -mem[64] + 100
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1189] = 26
                        mem[_1189 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                            sub_b119e0c3[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1213 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1213 + 68] = mem[idx + _1189 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1213 + 68] = mem[_1213 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1213 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _1201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1201] = 26
                    mem[_1201 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1229 + 68] = mem[idx + _1201 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1229 + 68] = mem[_1229 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1229 + -mem[64] + 100
                if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_875] = 26
                mem[_875 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _908 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _908 + 68] = mem[idx + _875 + 32]
                        idx = idx + 32
                        continue 
                    mem[_908 + 68] = mem[_908 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _908 + -mem[64] + 100
                _962 = mem[64]
                mem[64] = mem[64] + 64
                mem[_962] = 26
                mem[_962 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _985 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _985 + 68] = mem[idx + _962 + 32]
                        idx = idx + 32
                        continue 
                    mem[_985 + 68] = mem[_985 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _985 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                    _1200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1200] = 26
                    mem[_1200 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1226 + 68] = mem[idx + _1200 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1226 + 68] = mem[_1226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1226 + -mem[64] + 100
                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1212] = 26
                mem[_1212 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1240 + 68] = mem[idx + _1212 + 32]
                    idx = idx + 32
                    continue 
                mem[_1240 + 68] = mem[_1240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1240 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER):
                _861 = mem[64]
                mem[64] = mem[64] + 64
                mem[_861] = 26
                mem[_861 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _891 + 68] = mem[idx + _861 + 32]
                        idx = idx + 32
                        continue 
                    mem[_891 + 68] = mem[_891 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _891 + -mem[64] + 100
                _948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_948] = 26
                mem[_948 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _972 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _972 + 68] = mem[idx + _948 + 32]
                        idx = idx + 32
                        continue 
                    mem[_972 + 68] = mem[_972 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _972 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1186 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1186] = 26
                    mem[_1186 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1209 + 68] = mem[idx + _1186 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1209 + 68] = mem[_1209 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1209 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1199] = 26
                mem[_1199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1223 + 68] = mem[idx + _1199 + 32]
                    idx = idx + 32
                    continue 
                mem[_1223 + 68] = mem[_1223 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1223 + -mem[64] + 100
            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                _874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_874] = 26
                mem[_874 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _905 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _905 + 68] = mem[idx + _874 + 32]
                        idx = idx + 32
                        continue 
                    mem[_905 + 68] = mem[_905 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _905 + -mem[64] + 100
                _960 = mem[64]
                mem[64] = mem[64] + 64
                mem[_960] = 26
                mem[_960 + 32] = 'SafeMath: division by zero'
                if not sub_be279845:
                    _982 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _982 + 68] = mem[idx + _960 + 32]
                        idx = idx + 32
                        continue 
                    mem[_982 + 68] = mem[_982 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _982 + -mem[64] + 100
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / sub_be279845
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_508b8372Address)
                call sub_508b8372Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1198] = 26
                    mem[_1198 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                        sub_b119e0c3[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1220 + 68] = mem[idx + _1198 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1220 + 68] = mem[_1220 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1220 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                _1208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1208] = 26
                mem[_1208 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1236 + 68] = mem[idx + _1208 + 32]
                    idx = idx + 32
                    continue 
                mem[_1236 + 68] = mem[_1236 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1236 + -mem[64] + 100
            if (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[idx].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _890 = mem[64]
            mem[64] = mem[64] + 64
            mem[_890] = 26
            mem[_890 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _920 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _920 + 68] = mem[idx + _890 + 32]
                    idx = idx + 32
                    continue 
                mem[_920 + 68] = mem[_920 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _920 + -mem[64] + 100
            _970 = mem[64]
            mem[64] = mem[64] + 64
            mem[_970] = 26
            mem[_970 + 32] = 'SafeMath: division by zero'
            if not sub_be279845:
                _996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _996 + 68] = mem[idx + _970 + 32]
                    idx = idx + 32
                    continue 
                mem[_996 + 68] = mem[_996 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _996 + -mem[64] + 100
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / sub_be279845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_508b8372Address)
            call sub_508b8372Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint:
                _1207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1207] = 26
                mem[_1207 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b119e0c3[idx].field_768 += 0 / ext_call.return_data[0]
                    sub_b119e0c3[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1233 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1233 + 68] = mem[idx + _1207 + 32]
                    idx = idx + 32
                    continue 
                mem[_1233 + 68] = mem[_1233 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1233 + -mem[64] + 100
            if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _1219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1219] = 26
            mem[_1219 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[idx].field_768 < sub_b119e0c3[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b119e0c3[idx].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[idx].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) - (sub_b119e0c3[idx].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1247 + 68] = mem[idx + _1219 + 32]
                idx = idx + 32
                continue 
            mem[_1247 + 68] = mem[_1247 + 74 len 26]
            revert with memory
              from mem[64]
               len _1247 + -mem[64] + 100
    idx = 0
    while idx < sub_b119e0c3.length:
        mem[0] = 7
        if sub_b119e0c3[idx].field_0 == arg2:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    sub_b119e0c3.length++
    sub_b119e0c3[sub_b119e0c3.length].field_0 = arg2
    storA66C[stor7.length] = arg1
    if block.number > startBlock:
        storA66C[stor7.length] = block.number
    else:
        storA66C[stor7.length] = startBlock
    storA66C[stor7.length] = 0
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 >= sub_b119e0c3.length:
        revert with 0, 'svalidatePool: pool exists?'
    if msg.sender == arg3:
        revert with 0, 'deposit: invalid ref address'
    require arg1 < sub_b119e0c3.length
    if block.number <= sub_b119e0c3[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                    mem[197 len 31]
                    userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not ext_code.size(sub_b119e0c3[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call sub_b119e0c3[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_508b8372Address)
                    staticcall sub_508b8372Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_508b8372Address)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_508b8372Address)
                    staticcall sub_508b8372Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_508b8372Address)
                    if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_508b8372Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not ext_code.size(sub_b119e0c3[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call sub_b119e0c3[arg1].field_0 with:
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(sub_b119e0c3[arg1].field_0)
        staticcall sub_b119e0c3[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_b119e0c3[arg1].field_512 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                        mem[197 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not ext_code.size(sub_b119e0c3[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call sub_b119e0c3[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(sub_508b8372Address)
                        staticcall sub_508b8372Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_508b8372Address)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(sub_508b8372Address)
                        staticcall sub_508b8372Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_508b8372Address)
                        if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_508b8372Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not ext_code.size(sub_b119e0c3[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call sub_b119e0c3[arg1].field_0 with:
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if sub_b119e0c3[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - sub_b119e0c3[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_be279845:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / sub_be279845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_508b8372Address)
                    call sub_508b8372Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / block.number - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / (block.number * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                sub_b119e0c3[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(sub_b119e0c3[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = 0
                        mem[644 len 0] = 0
                        call sub_b119e0c3[arg1].field_0 with:
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(sub_508b8372Address)
                            staticcall sub_508b8372Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_508b8372Address)
                            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_508b8372Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(sub_b119e0c3[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[800 len 4] = 0
                        mem[772 len 0] = 0
                        call sub_b119e0c3[arg1].field_0 with:
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if sub_b119e0c3[arg1].field_512 >= bonusEndBlock:
                    if sub_b119e0c3[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - sub_b119e0c3[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_be279845:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / sub_be279845
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_508b8372Address)
                        call sub_508b8372Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) / block.number - sub_b119e0c3[arg1].field_512 != sub_109aa43e:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                        if not (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(sub_b119e0c3[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call sub_b119e0c3[arg1].field_0 with:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                                mem[ceil32(return_data.size) + 650 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_508b8372Address)
                                staticcall sub_508b8372Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_508b8372Address)
                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                else:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_508b8372Address)
                                staticcall sub_508b8372Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_508b8372Address)
                                if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                else:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(sub_b119e0c3[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                            call sub_b119e0c3[arg1].field_0 with:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                                mem[ceil32(return_data.size) + 778 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_b119e0c3[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - sub_b119e0c3[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) / block.number - bonusEndBlock != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - sub_b119e0c3[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_be279845:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / sub_be279845
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_508b8372Address)
                            call sub_508b8372Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER) != sub_109aa43e:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                            if not (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / (block.number * sub_109aa43e) - (bonusEndBlock * sub_109aa43e) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e) != sub_b119e0c3[arg1].field_256:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not sub_be279845:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / sub_be279845
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_508b8372Address)
                                call sub_508b8372Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + sub_b119e0c3[arg1].field_768 < sub_b119e0c3[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b119e0c3[arg1].field_768 += 10^12 * (block.number * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (bonusEndBlock * sub_109aa43e * sub_b119e0c3[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) - (sub_b119e0c3[arg1].field_512 * BONUS_MULTIPLIER * sub_109aa43e * sub_b119e0c3[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    sub_b119e0c3[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(sub_b119e0c3[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[736 len 4] = 0
                            mem[708 len 0] = 0
                            call sub_b119e0c3[arg1].field_0 with:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 723 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                                mem[ceil32(return_data.size) + 714 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_508b8372Address)
                                staticcall sub_508b8372Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_508b8372Address)
                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                else:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                            if userInfo[arg1][msg.sender].field_256 > sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_508b8372Address)
                                staticcall sub_508b8372Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_508b8372Address)
                                if (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                else:
                                    call sub_508b8372Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[645 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(sub_b119e0c3[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[864 len 4] = 0
                            mem[836 len 0] = 0
                            call sub_b119e0c3[arg1].field_0 with:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 851 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b119e0c3[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                                mem[ceil32(return_data.size) + 842 len 31]
                                userInfo[arg1][msg.sender].field_256 = sub_b119e0c3[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
